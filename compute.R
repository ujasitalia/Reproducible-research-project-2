# library(dplyr)
 # library(ggplot2)
 # library(reshape2)
# 
# 
# #data <- read.csv("repdata_data_StormData.csv.bz2")
#         
# subData <- subset(data, select = c(EVTYPE, FATALITIES, INJURIES, PROPDMG, PROPDMGEXP, CROPDMG, CROPDMGEXP))
# 
# subDataHealth <- subData[subData$FATALITIES !=0 |
#                            subData$INJURIES !=0, ]
# 
# subDataProp <- subData[subData$PROPDMG !=0 |
#                            subData$CROPDMG !=0, ]
# 
# 
# subDataHealth <- aggregate(cbind(FATALITIES, INJURIES) ~ EVTYPE, data = subData, FUN=sum)
# subDataHealth$PEOPLE_LOSS <- subDataHealth$FATALITIES + subDataHealth$INJURIES
# subDataHealth <- subDataHealth[order(subDataHealth$PEOPLE_LOSS, decreasing = TRUE), ]
# subDataHealth <- subDataHealth[1:10,]
# bad_stuff <- melt(subDataHealth, id.vars="EVTYPE", variable.name = "bad_thing")
 
 # subData$PROPDMGEXP <- gsub("[Hh]", "2", subData$PROPDMGEXP)
 # subData$PROPDMGEXP <- gsub("[Kk]", "3", subData$PROPDMGEXP)
 # subData$PROPDMGEXP <- gsub("[Mm]", "6", subData$PROPDMGEXP)
 # subData$PROPDMGEXP <- gsub("[Bb]", "9", subData$PROPDMGEXP)
 # subData$PROPDMGEXP <- gsub("\\+", "1", subData$PROPDMGEXP)
 # subData$PROPDMGEXP <- gsub("\\?|\\-|\\ ", "0",  subData$PROPDMGEXP)
 # subData$PROPDMGEXP <- as.numeric(subData$PROPDMGEXP)
 # 
 # subData$CROPDMGEXP <- gsub("[Hh]", "2", subData$CROPDMGEXP)
 # subData$CROPDMGEXP <- gsub("[Kk]", "3", subData$CROPDMGEXP)
 # subData$CROPDMGEXP <- gsub("[Mm]", "6", subData$CROPDMGEXP)
 # subData$CROPDMGEXP <- gsub("[Bb]", "9", subData$CROPDMGEXP)
 # subData$CROPDMGEXP <- gsub("\\+", "1", subData$CROPDMGEXP)
 # subData$CROPDMGEXP <- gsub("\\-|\\?|\\ ", "0", subData$CROPDMGEXP)
 # subData$CROPDMGEXP <- as.numeric(subData$CROPDMGEXP)
 # 
 # subData$PROPDMGEXP[is.na(subData$PROPDMGEXP)] <- 0
 # subData$CROPDMGEXP[is.na(subData$CROPDMGEXP)] <- 0
 # 
 # 
 # subData <- mutate(subData, PROPDMGTOTAL = PROPDMG * (10 ^ PROPDMGEXP), CROPDMGTOTAL = CROPDMG * (10 ^ CROPDMGEXP))
 
# #analyzing
# Economic_data <- aggregate(cbind(PROPDMGTOTAL, CROPDMGTOTAL) ~ EVTYPE, data = subData, FUN=sum)
# Economic_data$ECONOMIC_LOSS <- Economic_data$PROPDMGTOTAL + Economic_data$CROPDMGTOTAL
# Economic_data <- Economic_data[order(Economic_data$ECONOMIC_LOSS, decreasing = TRUE), ]
# Economic_data <- Economic_data[1:10,]
# econ_consequences <- melt(Economic_data, id.vars="EVTYPE", variable.name = "Damage_Type")
 
 # # Create chart
 # healthChart <- ggplot(bad_stuff, aes(x=reorder(EVTYPE, value), y=value))
 # 
 # # Plot data as bar chart
 # healthChart = healthChart + geom_bar(stat="identity", aes(fill=bad_thing), position="dodge")
 # 
 # # Format y-axis scale and set y-axis label
 # healthChart = healthChart + ylab("Frequency Count")
 # 
 # # Set x-axis label
 # healthChart = healthChart + xlab("Event Type")
 # 
 # # Rotate x-axis tick labels
 # healthChart = healthChart + theme(axis.text.x = element_text(angle=45, hjust=1))
 # 
 # # Set chart title and center it
 # healthChart = healthChart + ggtitle("Top 10 US Killers") + theme(plot.title = element_text(hjust = 0.5))
 # 
 # print(healthChart)
 
 # econChart <- ggplot(econ_consequences, aes(x=reorder(EVTYPE, -value), y=value))
 # 
 # # Plot data as bar chart
 # econChart = econChart + geom_bar(stat="identity", aes(fill=Damage_Type), position="dodge")
 # 
 # # Format y-axis scale and set y-axis label
 # econChart = econChart + ylab("Cost (dollars)")
 # 
 # # Set x-axis label
 # econChart = econChart + xlab("Event Type")
 # 
 # # Rotate x-axis tick labels
 # econChart = econChart + theme(axis.text.x = element_text(angle=45, hjust=1))
 # 
 # # Set chart title and center it
 # econChart = econChart + ggtitle("Top 10 US Storm Events causing Economic Consequences") + theme(plot.title = element_text(hjust = 0.5))
 # 
 # print(econChart)
 
 








setwd("C:/R_Stats1")
mydata<- read.csv(file.choose(), header=TRUE, sep=',')
View(mydata)
pairs(mydata)
cor(mydata)

	##          Downloads     Users  Sessions  Feedback
	##Downloads 1.0000000 0.9691798 0.9124740 0.7829886
	##Users     0.9691798 1.0000000 0.9689743 0.7022329
	##Sessions  0.9124740 0.9689743 1.0000000 0.6310351
	##Feedback  0.7829886 0.7022329 0.6310351 1.0000000

	##The closer to 1 the stronger the linear relationship.  

cor(mydata, method="spearman")
cor(mydata, method="kendall")

pairs(mydata, panel=panel.smooth)   ## Add trendline to matrix

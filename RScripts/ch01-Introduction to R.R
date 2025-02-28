#------------------------------------------------------------#
# R in Action (3rd ed): Chapter 1                            #
# Introduction to R                                          #
#------------------------------------------------------------#

## Chapter 01
## Introduction to R


for (i in 1:5) {
  print(i)
}


# Listing 1.1 A sample R session
mm = c('a','b')
ccc = c("q","b")

ccccc <- c('She said "Hello"')
cat(ccccc, sep = "")
?cat

rep(x=2, times=5)
rep(c("q","b"), 3)

# simulation using rep
library(ggplot2)

set.seed(111)

population_size <- 121

p <- 0.54

num_simulations <- 500

sample_size <- 1000

rep()
p_hat_values <- replicate(num_simulations, {
  # Simulate sampling from the population
  sample <- sample(c(rep(1,population_size * p), rep(0,population_size*(1-p))), sample_size, replace =FALSE) # replicate(num_simulations, {...})：这个函数会重复执行大括号中的代码num_simulations次，并将每次的结果存储在一个向量中； rep创建一个包含population_size * p个1和population_size * (1-p)个0的向量，模拟总体。
  mean(sample) #calculate the p_hat for each sample
})



histogram <- ggplot(data.frame(p = p_hat_values), aes(x=p))+
  geom_histogram(binwidth = 0.01, fill ="blue", color = "black")+
  labs(title =" ",
       x = "p_hat",
       y= "Frequency")+
  theme_minimal()

print(histogram)







age <- c(1, 3, 5, 2, 11, 9, 3, 9, 12, 3)
weight <- c(4.4, 5.3, 7.2, 5.2, 8.5, 7.3, 6.0, 10.4, 10.2, 6.1)
mean(weight)
sd(weight)
cor(age, weight)
plot(age, weight)



# Listing 1.2 An example of commands used to manage

#setwd("/Users/luyu/Desktop/RiA3")
#options()
#options(digits = 3)


# Listing 1.3 Working with a new package
help.start()
install.packages("vcd")
help(package = "vcd")
library(vcd)
help(Arthritis)
Arthritis
example(Arthritis)

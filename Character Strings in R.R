## Empty string
# empty string
empty_str = ""
# display
empty_str
# class
class(empty_str)

## Empty character vector
# empty character vector
empty_chr = character(0)
# display
empty_chr

# class
class(empty_chr)

# length of empty string
length(empty_str)

# length of empty character vector
length(empty_chr)

##character()

# character vector with 5 empty strings
char_vector = character(5)
# display
char_vector

# another example
example = character(0)
example

# check its length
length(example)

# add first element
example[1] = "first"
example

# check its length again
length(example)

example[4] = "fourth"
example
length(example)

## is.character() and as.character()
# define two objects 'a' and 'b'
a = "test me"
b = 8 + 9

# are 'a' and 'b' characters?
is.character(a)
is.character(b)

# classes of 'a' and 'b'
class(a)
class(b)

# converting 'b' as character
b = as.character(b)

## Strings and R objects

# vector with numbers and characters
c(1:5, pi, "text")

# vector with numbers, logicals, and characters
c(1:5, TRUE, pi, "text", FALSE)

# matrix with numbers and characters
rbind(1:5, letters[1:5])

# data frame with numbers and characters
df1 = data.frame(numbers = 1:5, letters = letters[1:5])
df1

# examine the data frame structure
str(df1)

# data frame with numbers and characters
df2 = data.frame(numbers = 1:5, letters = letters[1:5],
                 stringsAsFactors = FALSE)
df2
str(df1)
str(df2)

# list with elements of different mode
list(1:5, letters[1:5], rnorm(5))

## Getting Text into R

# abc radio stations data URL
abc = "http://www.abc.net.au/local/data/public/stations/abc-local-radio.csv"
# read data from URL
radio = read.table(abc, header = TRUE, sep = ",", stringsAsFactors = FALSE)

# size of table in 'radio'
dim(radio)

# structure of columns
str(radio, vec.len = 1)

## Reading raw text
# read 'ktop100.txt' file
top105 = readLines("http://www.textfiles.com/music/ktop100.txt")

# how many lines
length(top105)

# inspecting first elements
head(top105)

# top 5 songs
top105[11:15]

# inspecting last 10 elements
tail(top105, n = 10)

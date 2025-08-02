CC=clang++
#CC=g++
CFLAGS=-c -Wall -pedantic -std=c++17
LDFLAGS= -lm
SOURCES=IndexSartreServer.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=IndexSartreServer.out

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@
	rm ./*.o

.c.o:
	$(CC) $(CFLAGS) $< -o $@


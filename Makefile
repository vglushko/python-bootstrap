# Default target to be executed when running make with no parameters.
.DEFAULT_GOAL := all
# Forces make to treat those targets as non-file targets
.PHONY: black flake mypy all

# Invoke black from the current directory when running the 'make black' target
black:
	black .

# Invoke flake8 from the current directory when running the 'make flake' target
flake:
	flake8

# Invoke mypy on all *.py files recursively in all subdirectories when running the 'make mypy' target
mypy:
	mypy

# Invoke 'black', 'flake' and 'mypy' targets one by one when running the 'make all' target
all: black flake mypy
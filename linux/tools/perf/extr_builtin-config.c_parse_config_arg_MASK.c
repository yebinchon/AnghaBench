#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 void* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char**,char*) ; 

__attribute__((used)) static int FUNC4(char *arg, char **var, char **value)
{
	const char *last_dot = FUNC1(arg, '.');

	/*
	 * Since "var" actually contains the section name and the real
	 * config variable name separated by a dot, we have to know where the dot is.
	 */
	if (last_dot == NULL || last_dot == arg) {
		FUNC0("The config variable does not contain a section name: %s\n", arg);
		return -1;
	}
	if (!last_dot[1]) {
		FUNC0("The config variable does not contain a variable name: %s\n", arg);
		return -1;
	}

	*value = FUNC1(arg, '=');
	if (*value == NULL)
		*var = arg;
	else if (!FUNC2(*value, "=")) {
		FUNC0("The config variable does not contain a value: %s\n", arg);
		return -1;
	} else {
		*value = *value + 1; /* excluding a first character '=' */
		*var = FUNC3(&arg, "=");
		if (*var[0] == '\0') {
			FUNC0("invalid config variable: %s\n", arg);
			return -1;
		}
	}

	return 0;
}
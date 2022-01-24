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
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char*,char const) ; 

__attribute__((used)) static int FUNC3(const char *name, char *target)
{
	char *t = target;

	while (*name == '/' || *name == '.')
		name++;

	if (target) {
		for (; *name; name++) {
			if (*name == '/')
				*(t)++ = '.';
			else if (FUNC1(*name))
				*(t)++ = '_';
			else if (FUNC0(*name) || FUNC2("._-", *name))
				*(t)++ = *name;
		}

		*t = 0;
	} else {
		int len = 0;
		for (; *name; name++) {
			if (FUNC0(*name) || FUNC1(*name) ||
			    FUNC2("/._-", *name))
				len++;
		}

		return len;
	}

	return t - target;
}
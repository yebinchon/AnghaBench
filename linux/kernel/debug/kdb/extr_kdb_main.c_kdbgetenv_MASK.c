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
 char** __env ; 
 int __nenv ; 
 char* FUNC0 (char*,char) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

char *FUNC3(const char *match)
{
	char **ep = __env;
	int matchlen = FUNC1(match);
	int i;

	for (i = 0; i < __nenv; i++) {
		char *e = *ep++;

		if (!e)
			continue;

		if ((FUNC2(match, e, matchlen) == 0)
		 && ((e[matchlen] == '\0')
		   || (e[matchlen] == '='))) {
			char *cp = FUNC0(e, '=');
			return cp ? ++cp : "";
		}
	}
	return NULL;
}
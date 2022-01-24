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
 char* FUNC0 (char const*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,unsigned int) ; 

__attribute__((used)) static const char *FUNC2(const char *dptr, const char *limit,
					const char *needle, unsigned int len)
{
	for (limit -= len; dptr < limit; dptr++) {
		if (*dptr == '\r' || *dptr == '\n') {
			dptr = FUNC0(dptr, limit);
			if (dptr == NULL)
				break;
			continue;
		}

		if (FUNC1(dptr, needle, len) == 0)
			return dptr;
	}
	return NULL;
}
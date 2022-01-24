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
 scalar_t__ FUNC0 (char const*,char const,char const**) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 

__attribute__((used)) static bool FUNC3(const char *str, const char *pat, bool ignore_space,
			bool case_ins)
{
	while (*str && *pat && *pat != '*') {
		if (ignore_space) {
			/* Ignore spaces for lazy matching */
			if (FUNC1(*str)) {
				str++;
				continue;
			}
			if (FUNC1(*pat)) {
				pat++;
				continue;
			}
		}
		if (*pat == '?') {	/* Matches any single character */
			str++;
			pat++;
			continue;
		} else if (*pat == '[')	/* Character classes/Ranges */
			if (FUNC0(pat + 1, *str, &pat)) {
				str++;
				continue;
			} else
				return false;
		else if (*pat == '\\') /* Escaped char match as normal char */
			pat++;
		if (case_ins) {
			if (FUNC2(*str) != FUNC2(*pat))
				return false;
		} else if (*str != *pat)
			return false;
		str++;
		pat++;
	}
	/* Check wild card */
	if (*pat == '*') {
		while (*pat == '*')
			pat++;
		if (!*pat)	/* Tail wild card matches all */
			return true;
		while (*str)
			if (FUNC3(str++, pat, ignore_space, case_ins))
				return true;
	}
	return !*str && !*pat;
}
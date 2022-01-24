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
 char* FUNC0 (char const*,int,int,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(const char **str, int argc, char *argv[])
{
	const char *p = *str;
	const char *q;
	int nest = 0;

	/*
	 * In Kconfig, variable/function references always start with "$(".
	 * Neither single-letter variables as in $A nor curly braces as in ${CC}
	 * are supported.  '$' not followed by '(' loses its special meaning.
	 */
	if (*p != '(') {
		*str = p;
		return FUNC2("$");
	}

	p++;
	q = p;
	while (*q) {
		if (*q == '(') {
			nest++;
		} else if (*q == ')') {
			if (nest-- == 0)
				break;
		}
		q++;
	}

	if (!*q)
		FUNC1("unterminated reference to '%s': missing ')'", p);

	/* Advance 'str' to after the expanded initial portion of the string */
	*str = q + 1;

	return FUNC0(p, q - p, argc, argv);
}
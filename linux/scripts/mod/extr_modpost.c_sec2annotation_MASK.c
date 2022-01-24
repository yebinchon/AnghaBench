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
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_exit_sections ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 

__attribute__((used)) static char *FUNC6(const char *s)
{
	if (FUNC2(s, init_exit_sections)) {
		char *p = FUNC0(FUNC1(20));
		char *r = p;

		*p++ = '_';
		*p++ = '_';
		if (*s == '.')
			s++;
		while (*s && *s != '.')
			*p++ = *s++;
		*p = '\0';
		if (*s == '.')
			s++;
		if (FUNC5(s, "rodata") != NULL)
			FUNC3(p, "const ");
		else if (FUNC5(s, "data") != NULL)
			FUNC3(p, "data ");
		else
			FUNC3(p, " ");
		return r;
	} else {
		return FUNC0(FUNC4(""));
	}
}
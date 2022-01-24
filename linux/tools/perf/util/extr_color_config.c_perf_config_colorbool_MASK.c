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
 char* FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int FUNC6(const char *var, const char *value, int stdout_is_tty)
{
	if (value) {
		if (!FUNC4(value, "never"))
			return 0;
		if (!FUNC4(value, "always"))
			return 1;
		if (!FUNC4(value, "auto"))
			goto auto_color;
	}

	/* Missing or explicit false to turn off colorization */
	if (!FUNC3(var, value))
		return 0;

	/* any normal truth value defaults to 'auto' */
 auto_color:
	if (stdout_is_tty < 0)
		stdout_is_tty = FUNC1(1);
	if (stdout_is_tty || FUNC2()) {
		char *term = FUNC0("TERM");
		if (term && FUNC5(term, "dumb"))
			return 1;
	}
	return 0;
}
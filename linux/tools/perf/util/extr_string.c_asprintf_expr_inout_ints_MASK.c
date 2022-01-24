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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (char*,size_t,char*,char const*,...) ; 

char *FUNC3(const char *var, bool in, size_t nints, int *ints)
{
	/*
	 * FIXME: replace this with an expression using log10() when we
	 * find a suitable implementation, maybe the one in the dvb drivers...
	 *
	 * "%s == %d || " = log10(MAXINT) * 2 + 8 chars for the operators
	 */
	size_t size = nints * 28 + 1; /* \0 */
	size_t i, printed = 0;
	char *expr = FUNC1(size);

	if (expr) {
		const char *or_and = "||", *eq_neq = "==";
		char *e = expr;

		if (!in) {
			or_and = "&&";
			eq_neq = "!=";
		}

		for (i = 0; i < nints; ++i) {
			if (printed == size)
				goto out_err_overflow;

			if (i > 0)
				printed += FUNC2(e + printed, size - printed, " %s ", or_and);
			printed += FUNC2(e + printed, size - printed,
					     "%s %s %d", var, eq_neq, ints[i]);
		}
	}

	return expr;

out_err_overflow:
	FUNC0(expr);
	return NULL;
}
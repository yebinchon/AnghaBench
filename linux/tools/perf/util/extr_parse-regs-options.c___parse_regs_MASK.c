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
typedef  int uint64_t ;
struct sample_reg {char* name; int mask; } ;
struct option {scalar_t__ value; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct sample_reg* sample_reg_masks ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*) ; 

__attribute__((used)) static int
FUNC10(const struct option *opt, const char *str, int unset, bool intr)
{
	uint64_t *mode = (uint64_t *)opt->value;
	const struct sample_reg *r;
	char *s, *os = NULL, *p;
	int ret = -1;
	uint64_t mask;

	if (unset)
		return 0;

	/*
	 * cannot set it twice
	 */
	if (*mode)
		return -1;

	if (intr)
		mask = FUNC0();
	else
		mask = FUNC1();

	/* str may be NULL in case no arg is passed to -I */
	if (str) {
		/* because str is read-only */
		s = os = FUNC8(str);
		if (!s)
			return -1;

		for (;;) {
			p = FUNC6(s, ',');
			if (p)
				*p = '\0';

			if (!FUNC7(s, "?")) {
				FUNC2(stderr, "available registers: ");
				for (r = sample_reg_masks; r->name; r++) {
					if (r->mask & mask)
						FUNC2(stderr, "%s ", r->name);
				}
				FUNC3('\n', stderr);
				/* just printing available regs */
				return -1;
			}
			for (r = sample_reg_masks; r->name; r++) {
				if ((r->mask & mask) && !FUNC5(s, r->name))
					break;
			}
			if (!r->name) {
				FUNC9("Unknown register \"%s\", check man page or run \"perf record %s?\"\n",
					    s, intr ? "-I" : "--user-regs=");
				goto error;
			}

			*mode |= r->mask;

			if (!p)
				break;

			s = p + 1;
		}
	}
	ret = 0;

	/* default to all possible regs */
	if (*mode == 0)
		*mode = mask;
error:
	FUNC4(os);
	return ret;
}
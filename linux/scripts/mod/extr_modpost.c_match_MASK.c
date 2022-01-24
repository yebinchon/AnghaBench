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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 char* FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(const char *sym, const char * const pat[])
{
	const char *p;
	while (*pat) {
		p = *pat++;
		const char *endp = p + FUNC3(p) - 1;

		/* "*foo*" */
		if (*p == '*' && *endp == '*') {
			char *bare = FUNC0(FUNC5(p + 1, FUNC3(p) - 2));
			char *here = FUNC7(sym, bare);

			FUNC1(bare);
			if (here != NULL)
				return 1;
		}
		/* "*foo" */
		else if (*p == '*') {
			if (FUNC6(sym, p + 1) == 0)
				return 1;
		}
		/* "foo*" */
		else if (*endp == '*') {
			if (FUNC4(sym, p, FUNC3(p) - 1) == 0)
				return 1;
		}
		/* no wildcards */
		else {
			if (FUNC2(p, sym) == 0)
				return 1;
		}
	}
	/* no match */
	return 0;
}
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
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EXIT_FAILURE ; 
 char* UNPRIV_SYSCTL ; 
 unsigned int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  tests ; 
 scalar_t__ unpriv_disabled ; 
 int verbose ; 

int FUNC8(int argc, char **argv)
{
	unsigned int from = 0, to = FUNC0(tests);
	bool unpriv = !FUNC5();
	int arg = 1;

	if (argc > 1 && FUNC7(argv[1], "-v") == 0) {
		arg++;
		verbose = true;
		argc--;
	}

	if (argc == 3) {
		unsigned int l = FUNC1(argv[arg]);
		unsigned int u = FUNC1(argv[arg + 1]);

		if (l < to && u < to) {
			from = l;
			to   = u + 1;
		}
	} else if (argc == 2) {
		unsigned int t = FUNC1(argv[arg]);

		if (t < to) {
			from = t;
			to   = t + 1;
		}
	}

	FUNC4();
	if (unpriv && unpriv_disabled) {
		FUNC6("Cannot run as unprivileged user with sysctl %s.\n",
		       UNPRIV_SYSCTL);
		return EXIT_FAILURE;
	}

	FUNC2();
	return FUNC3(unpriv, from, to);
}
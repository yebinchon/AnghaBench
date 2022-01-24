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
 int FUNC0 (char*) ; 
 char** envp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

int FUNC7(int argc, char **argv)
{
	int ii;
	int rc;
	const char *verbose = FUNC2("VERBOSE");

	if (argc >= 2) {
		/* If we are invoked with an argument, don't run tests. */
		const char *in_test = FUNC2("IN_TEST");

		if (verbose) {
			FUNC4("  invoked with:");
			for (ii = 0; ii < argc; ii++)
				FUNC4(" [%d]='%s'", ii, argv[ii]);
			FUNC4("\n");
		}

		/* Check expected environment transferred. */
		if (!in_test || FUNC6(in_test, "yes") != 0) {
			FUNC4("[FAIL] (no IN_TEST=yes in env)\n");
			return 1;
		}

		/* Use the final argument as an exit code. */
		rc = FUNC0(argv[argc - 1]);
		FUNC1(stdout);
	} else {
		FUNC3();
		if (verbose)
			envp[1] = "VERBOSE=1";
		rc = FUNC5();
		if (rc > 0)
			FUNC4("%d tests failed\n", rc);
	}
	return rc;
}
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
 int KSFT_SKIP ; 
 int NPROCESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  __WALL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC9(void)
{
	int warnings_before, warnings_after;

	if (!FUNC4()) {
		FUNC5("Must be run on an Intel CPU, skipping test\n");
		FUNC1(KSFT_SKIP);
	}

	if (FUNC7(NULL)) {
		FUNC5("Unrestricted guest must be disabled, skipping test\n");
		FUNC1(KSFT_SKIP);
	}

	warnings_before = FUNC3();

	for (int i = 0; i < NPROCESS; ++i) {
		int status;
		int pid = FUNC2();

		if (pid < 0)
			FUNC1(1);
		if (pid == 0) {
			FUNC6();
			FUNC1(0);
		}
		while (FUNC8(pid, &status, __WALL) != pid)
			;
	}

	warnings_after = FUNC3();
	FUNC0(warnings_before == warnings_after,
		   "Warnings found in kernel.  Run 'dmesg' to inspect them.");

	return 0;
}
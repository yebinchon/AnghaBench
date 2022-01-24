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
 int /*<<< orphan*/  PTRACE_TRACEME ; 
 int /*<<< orphan*/  SIGCONT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	int child = FUNC2();

	if (child == 0) {
		/*
		 * The child sets itself for as tracee and
		 * waits in signal for parent to trace it,
		 * then it calls bp_1 and quits.
		 */
		int err = FUNC4(PTRACE_TRACEME, 0, NULL, NULL);

		if (err) {
			FUNC3("failed to PTRACE_TRACEME\n");
			FUNC1(1);
		}

		FUNC5(SIGCONT);
		FUNC0();
		FUNC1(0);
	}

	return child;
}
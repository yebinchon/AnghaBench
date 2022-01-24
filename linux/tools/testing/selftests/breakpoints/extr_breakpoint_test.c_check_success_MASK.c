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
 int /*<<< orphan*/  PTRACE_PEEKDATA ; 
 int /*<<< orphan*/  PTRACE_POKEDATA ; 
 scalar_t__ SIGTRAP ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  child_pid ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int nr_tests ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int trapped ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 

__attribute__((used)) static void FUNC7(const char *msg)
{
	int child_nr_tests;
	int status;
	int ret;

	/* Wait for the child to SIGTRAP */
	FUNC6(&status);

	ret = 0;

	if (FUNC0(status) == SIGTRAP) {
		child_nr_tests = FUNC4(PTRACE_PEEKDATA, child_pid,
					&nr_tests, 0);
		if (child_nr_tests == nr_tests)
			ret = 1;
		if (FUNC4(PTRACE_POKEDATA, child_pid, &trapped, 1))
			FUNC1("Can't poke: %s\n", FUNC5(errno));
	}

	nr_tests++;

	if (ret)
		FUNC3(msg);
	else
		FUNC2(msg);
}
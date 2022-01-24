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
typedef  int /*<<< orphan*/  set ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PTRACE_TRACEME ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(int cpu)
{
	cpu_set_t set;

	FUNC1(&set);
	FUNC0(cpu, &set);
	if (FUNC6(0, sizeof(set), &set) != 0) {
		FUNC3("sched_setaffinity() failed: %s\n",
			FUNC7(errno));
		FUNC2(1);
	}

	if (FUNC4(PTRACE_TRACEME, 0, NULL, NULL) != 0) {
		FUNC3("ptrace(PTRACE_TRACEME) failed: %s\n",
			FUNC7(errno));
		FUNC2(1);
	}

	if (FUNC5(SIGSTOP) != 0) {
		FUNC3("raise(SIGSTOP) failed: %s\n", FUNC7(errno));
		FUNC2(1);
	}

	FUNC2(0);
}
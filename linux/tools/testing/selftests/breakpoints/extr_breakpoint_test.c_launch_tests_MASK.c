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
 int /*<<< orphan*/  BP_RW ; 
 int /*<<< orphan*/  BP_W ; 
 int COUNT_ISN_BPS ; 
 int COUNT_WPS ; 
 int /*<<< orphan*/  PTRACE_CONT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  child_pid ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	char buf[1024];
	unsigned int tests = 0;
	int len, local, global, i;

	tests += 3 * COUNT_ISN_BPS;
	tests += sizeof(long) / 2 * 3 * COUNT_WPS;
	tests += sizeof(long) / 2 * 3 * COUNT_WPS;
	tests += 2;
	FUNC1(tests);

	/* Instruction breakpoints */
	for (local = 0; local < 2; local++) {
		for (global = 0; global < 2; global++) {
			if (!local && !global)
				continue;
			FUNC2(buf, local, global);
		}
	}

	/* Write watchpoint */
	for (len = 1; len <= sizeof(long); len <<= 1) {
		for (local = 0; local < 2; local++) {
			for (global = 0; global < 2; global++) {
				if (!local && !global)
					continue;
				FUNC3(buf, BP_W, len,
						   local, global);
			}
		}
	}

	/* Read-Write watchpoint */
	for (len = 1; len <= sizeof(long); len <<= 1) {
		for (local = 0; local < 2; local++) {
			for (global = 0; global < 2; global++) {
				if (!local && !global)
					continue;
				FUNC3(buf, BP_RW, len,
						   local, global);
			}
		}
	}

	/* Icebp traps */
	FUNC4(PTRACE_CONT, child_pid, NULL, 0);
	FUNC0("Test icebp\n");

	/* Int 3 traps */
	FUNC4(PTRACE_CONT, child_pid, NULL, 0);
	FUNC0("Test int 3 trap\n");

	FUNC4(PTRACE_CONT, child_pid, NULL, 0);
}
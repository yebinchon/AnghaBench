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
 int /*<<< orphan*/  BP_X ; 
 int COUNT_ISN_BPS ; 
 int /*<<< orphan*/  PTRACE_CONT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  child_pid ; 
 int /*<<< orphan*/ * dummy_funcs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static void FUNC5(char *buf, int local, int global)
{
	int i;

	for (i = 0; i < COUNT_ISN_BPS; i++) {
		FUNC2(dummy_funcs[i], i);
		FUNC4(i, BP_X, 1, local, global, 1);
		FUNC1(PTRACE_CONT, child_pid, NULL, 0);
		FUNC3(buf, "Test breakpoint %d with local: %d global: %d\n",
			i, local, global);
		FUNC0(buf);
		FUNC4(i, BP_X, 1, local, global, 0);
	}
}
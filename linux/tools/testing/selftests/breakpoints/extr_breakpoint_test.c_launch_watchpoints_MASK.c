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
 int BP_W ; 
 int COUNT_WPS ; 
 int /*<<< orphan*/  PTRACE_CONT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  child_pid ; 
 int /*<<< orphan*/ * dummy_var ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int,int,int) ; 

__attribute__((used)) static void FUNC5(char *buf, int mode, int len,
			       int local, int global)
{
	const char *mode_str;
	int i;

	if (mode == BP_W)
		mode_str = "write";
	else
		mode_str = "read";

	for (i = 0; i < COUNT_WPS; i++) {
		FUNC2(&dummy_var[i], i);
		FUNC4(i, mode, len, local, global, 1);
		FUNC1(PTRACE_CONT, child_pid, NULL, 0);
		FUNC3(buf,
			"Test %s watchpoint %d with len: %d local: %d global: %d\n",
			mode_str, i, len, local, global);
		FUNC0(buf);
		FUNC4(i, mode, len, local, global, 0);
	}
}
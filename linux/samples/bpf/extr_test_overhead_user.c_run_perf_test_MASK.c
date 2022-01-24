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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(int tasks, int flags)
{
	pid_t pid[tasks];
	int i;

	for (i = 0; i < tasks; i++) {
		pid[i] = FUNC2();
		if (pid[i] == 0) {
			FUNC3(i, flags);
			FUNC1(0);
		} else if (pid[i] == -1) {
			FUNC4("couldn't spawn #%d process\n", i);
			FUNC1(1);
		}
	}
	for (i = 0; i < tasks; i++) {
		int status;

		FUNC0(FUNC5(pid[i], &status, 0) == pid[i]);
		FUNC0(status == 0);
	}
}
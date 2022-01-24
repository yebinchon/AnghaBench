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
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(unsigned int tasks, void (*fn)(int i, void *data),
			 void *data)
{
	int next_sched_cpu = 0;
	pid_t pid[tasks];
	int i;

	for (i = 0; i < tasks; i++) {
		pid[i] = FUNC2();
		if (pid[i] == 0) {
			next_sched_cpu = FUNC4(0, next_sched_cpu);
			fn(i, data);
			FUNC1(0);
		} else if (pid[i] == -1) {
			FUNC3("couldn't spawn #%d process\n", i);
			FUNC1(1);
		}
		/* It is mostly redundant and just allow the parent
		 * process to update next_shced_cpu for the next child
		 * process
		 */
		next_sched_cpu = FUNC4(pid[i], next_sched_cpu);
	}
	for (i = 0; i < tasks; i++) {
		int status;

		FUNC0(FUNC5(pid[i], &status, 0) == pid[i]);
		FUNC0(status == 0);
	}
}
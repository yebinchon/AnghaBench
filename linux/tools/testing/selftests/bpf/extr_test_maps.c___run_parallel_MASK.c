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
 int FUNC4 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(unsigned int tasks,
			   void (*fn)(unsigned int task, void *data),
			   void *data)
{
	pid_t pid[tasks];
	int i;

	for (i = 0; i < tasks; i++) {
		pid[i] = FUNC2();
		if (pid[i] == 0) {
			fn(i, data);
			FUNC1(0);
		} else if (pid[i] == -1) {
			FUNC3("Couldn't spawn #%d process!\n", i);
			FUNC1(1);
		}
	}

	for (i = 0; i < tasks; i++) {
		int status;

		FUNC0(FUNC4(pid[i], &status, 0) == pid[i]);
		FUNC0(status == 0);
	}
}
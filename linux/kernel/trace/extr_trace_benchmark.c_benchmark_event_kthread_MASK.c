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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(void *arg)
{
	/* sleep a bit to make sure the tracepoint gets activated */
	FUNC2(100);

	while (!FUNC1()) {

		FUNC3();

		/*
		 * We don't go to sleep, but let others run as well.
		 * This is bascially a "yield()" to let any task that
		 * wants to run, schedule in, but if the CPU is idle,
		 * we'll keep burning cycles.
		 *
		 * Note the tasks_rcu_qs() version of cond_resched() will
		 * notify synchronize_rcu_tasks() that this thread has
		 * passed a quiescent state for rcu_tasks. Otherwise
		 * this thread will never voluntarily schedule which would
		 * block synchronize_rcu_tasks() indefinitely.
		 */
		FUNC0();
	}

	return 0;
}
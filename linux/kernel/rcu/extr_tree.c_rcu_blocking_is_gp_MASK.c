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
 int /*<<< orphan*/  CONFIG_PREEMPTION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RCU_SCHEDULER_INACTIVE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ rcu_scheduler_active ; 

__attribute__((used)) static int FUNC5(void)
{
	int ret;

	if (FUNC0(CONFIG_PREEMPTION))
		return rcu_scheduler_active == RCU_SCHEDULER_INACTIVE;
	FUNC1();  /* Check for RCU read-side critical section. */
	FUNC3();
	ret = FUNC2() <= 1;
	FUNC4();
	return ret;
}
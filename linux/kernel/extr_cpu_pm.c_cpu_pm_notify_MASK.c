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
typedef  enum cpu_pm_event { ____Placeholder_cpu_pm_event } cpu_pm_event ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  cpu_pm_notifier_chain ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(enum cpu_pm_event event, int nr_to_call, int *nr_calls)
{
	int ret;

	/*
	 * __atomic_notifier_call_chain has a RCU read critical section, which
	 * could be disfunctional in cpu idle. Copy RCU_NONIDLE code to let
	 * RCU know this.
	 */
	FUNC2();
	ret = FUNC0(&cpu_pm_notifier_chain, event, NULL,
		nr_to_call, nr_calls);
	FUNC3();

	return FUNC1(ret);
}
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
struct rt_bandwidth {scalar_t__ rt_runtime; int rt_period_active; int /*<<< orphan*/  rt_runtime_lock; int /*<<< orphan*/  rt_period_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS_PINNED_HARD ; 
 scalar_t__ RUNTIME_INF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct rt_bandwidth *rt_b)
{
	if (!FUNC5() || rt_b->rt_runtime == RUNTIME_INF)
		return;

	FUNC3(&rt_b->rt_runtime_lock);
	if (!rt_b->rt_period_active) {
		rt_b->rt_period_active = 1;
		/*
		 * SCHED_DEADLINE updates the bandwidth, as a run away
		 * RT task with a DL task could hog a CPU. But DL does
		 * not reset the period. If a deadline task was running
		 * without an RT task running, it can cause RT tasks to
		 * throttle when they start up. Kick the timer right away
		 * to update the period.
		 */
		FUNC0(&rt_b->rt_period_timer, FUNC2(0));
		FUNC1(&rt_b->rt_period_timer,
				      HRTIMER_MODE_ABS_PINNED_HARD);
	}
	FUNC4(&rt_b->rt_runtime_lock);
}
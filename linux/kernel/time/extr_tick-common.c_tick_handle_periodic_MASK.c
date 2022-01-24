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
struct clock_event_device {scalar_t__ event_handler; int /*<<< orphan*/  next_event; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct clock_event_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  tick_period ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 

void FUNC6(struct clock_event_device *dev)
{
	int cpu = FUNC3();
	ktime_t next = dev->next_event;

	FUNC4(cpu);

#if defined(CONFIG_HIGH_RES_TIMERS) || defined(CONFIG_NO_HZ_COMMON)
	/*
	 * The cpu might have transitioned to HIGHRES or NOHZ mode via
	 * update_process_times() -> run_local_timers() ->
	 * hrtimer_run_queues().
	 */
	if (dev->event_handler != tick_handle_periodic)
		return;
#endif

	if (!FUNC0(dev))
		return;
	for (;;) {
		/*
		 * Setup the next period for devices, which do not have
		 * periodic mode:
		 */
		next = FUNC2(next, tick_period);

		if (!FUNC1(dev, next, false))
			return;
		/*
		 * Have to be careful here. If we're in oneshot mode,
		 * before we call tick_periodic() in a loop, we need
		 * to be sure we're using a real hardware clocksource.
		 * Otherwise we could get trapped in an infinite
		 * loop, as the tick_periodic() increments jiffies,
		 * which then will increment time, possibly causing
		 * the loop to trigger again and again.
		 */
		if (FUNC5())
			FUNC4(cpu);
	}
}
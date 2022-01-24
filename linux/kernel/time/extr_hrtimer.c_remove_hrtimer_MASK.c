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
typedef  int /*<<< orphan*/  u8 ;
struct hrtimer_clock_base {scalar_t__ cpu_base; } ;
struct hrtimer {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_STATE_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct hrtimer*,struct hrtimer_clock_base*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*) ; 
 int /*<<< orphan*/  hrtimer_bases ; 
 scalar_t__ FUNC2 (struct hrtimer*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int
FUNC4(struct hrtimer *timer, struct hrtimer_clock_base *base, bool restart)
{
	if (FUNC2(timer)) {
		u8 state = timer->state;
		int reprogram;

		/*
		 * Remove the timer and force reprogramming when high
		 * resolution mode is active and the timer is on the current
		 * CPU. If we remove a timer on another CPU, reprogramming is
		 * skipped. The interrupt event on this CPU is fired and
		 * reprogramming happens in the interrupt handler. This is a
		 * rare case and less expensive than a smp call.
		 */
		FUNC1(timer);
		reprogram = base->cpu_base == FUNC3(&hrtimer_bases);

		if (!restart)
			state = HRTIMER_STATE_INACTIVE;

		FUNC0(timer, base, state, reprogram);
		return 1;
	}
	return 0;
}
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
typedef  int /*<<< orphan*/  u64 ;
struct hrtimer_clock_base {int dummy; } ;
struct hrtimer {int /*<<< orphan*/  is_hard; int /*<<< orphan*/  is_soft; } ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PREEMPT_RT ; 
 int const HRTIMER_MODE_HARD ; 
 int const HRTIMER_MODE_SOFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct hrtimer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,struct hrtimer_clock_base*) ; 
 int /*<<< orphan*/  FUNC3 (struct hrtimer*,int) ; 
 struct hrtimer_clock_base* FUNC4 (struct hrtimer*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct hrtimer*,unsigned long*) ; 

void FUNC6(struct hrtimer *timer, ktime_t tim,
			    u64 delta_ns, const enum hrtimer_mode mode)
{
	struct hrtimer_clock_base *base;
	unsigned long flags;

	/*
	 * Check whether the HRTIMER_MODE_SOFT bit and hrtimer.is_soft
	 * match on CONFIG_PREEMPT_RT = n. With PREEMPT_RT check the hard
	 * expiry mode because unmarked timers are moved to softirq expiry.
	 */
	if (!FUNC0(CONFIG_PREEMPT_RT))
		FUNC1(!(mode & HRTIMER_MODE_SOFT) ^ !timer->is_soft);
	else
		FUNC1(!(mode & HRTIMER_MODE_HARD) ^ !timer->is_hard);

	base = FUNC4(timer, &flags);

	if (FUNC2(timer, tim, delta_ns, mode, base))
		FUNC3(timer, true);

	FUNC5(timer, &flags);
}
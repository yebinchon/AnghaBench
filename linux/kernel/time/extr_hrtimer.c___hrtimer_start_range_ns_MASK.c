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
struct hrtimer_clock_base {int /*<<< orphan*/  (* get_time ) () ;} ;
struct hrtimer {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;

/* Variables and functions */
 int const HRTIMER_MODE_PINNED ; 
 int const HRTIMER_MODE_REL ; 
 int FUNC0 (struct hrtimer*,struct hrtimer_clock_base*,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hrtimer*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hrtimer*,struct hrtimer_clock_base*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct hrtimer_clock_base* FUNC6 (struct hrtimer*,struct hrtimer_clock_base*,int const) ; 

__attribute__((used)) static int FUNC7(struct hrtimer *timer, ktime_t tim,
				    u64 delta_ns, const enum hrtimer_mode mode,
				    struct hrtimer_clock_base *base)
{
	struct hrtimer_clock_base *new_base;

	/* Remove an active timer from the queue: */
	FUNC4(timer, base, true);

	if (mode & HRTIMER_MODE_REL)
		tim = FUNC3(tim, base->get_time());

	tim = FUNC2(timer, tim, mode);

	FUNC1(timer, tim, delta_ns);

	/* Switch the timer base, if necessary: */
	new_base = FUNC6(timer, base, mode & HRTIMER_MODE_PINNED);

	return FUNC0(timer, new_base, mode);
}
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
typedef  int u64 ;
struct hrtimer {int state; } ;
typedef  int s64 ;
typedef  scalar_t__ ktime_t ;

/* Variables and functions */
 int HRTIMER_STATE_ENQUEUED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hrtimer*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hrtimer*) ; 
 scalar_t__ FUNC4 (struct hrtimer*) ; 
 scalar_t__ hrtimer_resolution ; 
 int FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 

u64 FUNC9(struct hrtimer *timer, ktime_t now, ktime_t interval)
{
	u64 orun = 1;
	ktime_t delta;

	delta = FUNC6(now, FUNC3(timer));

	if (delta < 0)
		return 0;

	if (FUNC0(timer->state & HRTIMER_STATE_ENQUEUED))
		return 0;

	if (interval < hrtimer_resolution)
		interval = hrtimer_resolution;

	if (FUNC8(delta >= interval)) {
		s64 incr = FUNC7(interval);

		orun = FUNC5(delta, incr);
		FUNC2(timer, incr * orun);
		if (FUNC4(timer) > now)
			return orun;
		/*
		 * This (and the ktime_add() below) is the
		 * correction for exact:
		 */
		orun++;
	}
	FUNC1(timer, interval);

	return orun;
}
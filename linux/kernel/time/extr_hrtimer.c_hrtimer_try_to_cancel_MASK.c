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
struct hrtimer_clock_base {int dummy; } ;
struct hrtimer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hrtimer*) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*) ; 
 struct hrtimer_clock_base* FUNC2 (struct hrtimer*,unsigned long*) ; 
 int FUNC3 (struct hrtimer*,struct hrtimer_clock_base*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hrtimer*,unsigned long*) ; 

int FUNC5(struct hrtimer *timer)
{
	struct hrtimer_clock_base *base;
	unsigned long flags;
	int ret = -1;

	/*
	 * Check lockless first. If the timer is not active (neither
	 * enqueued nor running the callback, nothing to do here.  The
	 * base lock does not serialize against a concurrent enqueue,
	 * so we can avoid taking it.
	 */
	if (!FUNC0(timer))
		return 0;

	base = FUNC2(timer, &flags);

	if (!FUNC1(timer))
		ret = FUNC3(timer, base, false);

	FUNC4(timer, &flags);

	return ret;

}
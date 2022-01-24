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
struct hrtimer_clock_base {struct hrtimer const* running; int /*<<< orphan*/  seq; } ;
struct hrtimer {scalar_t__ state; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 scalar_t__ HRTIMER_STATE_INACTIVE ; 
 struct hrtimer_clock_base* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 

bool FUNC3(const struct hrtimer *timer)
{
	struct hrtimer_clock_base *base;
	unsigned int seq;

	do {
		base = FUNC0(timer->base);
		seq = FUNC1(&base->seq);

		if (timer->state != HRTIMER_STATE_INACTIVE ||
		    base->running == timer)
			return true;

	} while (FUNC2(&base->seq, seq) ||
		 base != FUNC0(timer->base));

	return false;
}
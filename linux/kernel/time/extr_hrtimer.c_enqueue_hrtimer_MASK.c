#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hrtimer_clock_base {int index; int /*<<< orphan*/  active; TYPE_1__* cpu_base; } ;
struct hrtimer {int /*<<< orphan*/  node; int /*<<< orphan*/  state; } ;
typedef  enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;
struct TYPE_2__ {int active_bases; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_STATE_ENQUEUED ; 
 int /*<<< orphan*/  FUNC0 (struct hrtimer*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct hrtimer *timer,
			   struct hrtimer_clock_base *base,
			   enum hrtimer_mode mode)
{
	FUNC0(timer, mode);

	base->cpu_base->active_bases |= 1 << base->index;

	timer->state = HRTIMER_STATE_ENQUEUED;

	return FUNC1(&base->active, &timer->node);
}
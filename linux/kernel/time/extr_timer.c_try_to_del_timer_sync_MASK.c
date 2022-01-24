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
struct timer_list {int dummy; } ;
struct timer_base {int /*<<< orphan*/  lock; struct timer_list* running_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timer_list*) ; 
 int FUNC1 (struct timer_list*,struct timer_base*,int) ; 
 struct timer_base* FUNC2 (struct timer_list*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct timer_list *timer)
{
	struct timer_base *base;
	unsigned long flags;
	int ret = -1;

	FUNC0(timer);

	base = FUNC2(timer, &flags);

	if (base->running_timer != timer)
		ret = FUNC1(timer, base, true);

	FUNC3(&base->lock, flags);

	return ret;
}
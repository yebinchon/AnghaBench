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
struct timer_list {int flags; int /*<<< orphan*/  function; } ;
struct timer_base {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TIMER_BASEMASK ; 
 int TIMER_MIGRATING ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct timer_base*) ; 
 struct timer_base* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct timer_base*,struct timer_list*) ; 
 struct timer_base* FUNC6 (struct timer_list*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC10 (struct timer_list*) ; 

void FUNC11(struct timer_list *timer, int cpu)
{
	struct timer_base *new_base, *base;
	unsigned long flags;

	FUNC0(FUNC10(timer) || !timer->function);

	new_base = FUNC4(timer->flags, cpu);

	/*
	 * If @timer was on a different CPU, it should be migrated with the
	 * old base locked to prevent other operations proceeding with the
	 * wrong base locked.  See lock_timer_base().
	 */
	base = FUNC6(timer, &flags);
	if (base != new_base) {
		timer->flags |= TIMER_MIGRATING;

		FUNC8(&base->lock);
		base = new_base;
		FUNC7(&base->lock);
		FUNC1(timer->flags,
			   (timer->flags & ~TIMER_BASEMASK) | cpu);
	}
	FUNC3(base);

	FUNC2(timer);
	FUNC5(base, timer);
	FUNC9(&base->lock, flags);
}
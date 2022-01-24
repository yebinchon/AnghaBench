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
struct ct_timer_instance {scalar_t__ running; int /*<<< orphan*/  running_list; struct ct_timer* timer_base; } ;
struct ct_timer {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ct_timer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct ct_timer_instance *ti)
{
	struct ct_timer *atimer = ti->timer_base;
	unsigned long flags;

	FUNC2(&atimer->lock, flags);
	FUNC1(&ti->running_list);
	ti->running = 0;
	FUNC3(&atimer->lock, flags);
	FUNC0(atimer);
}
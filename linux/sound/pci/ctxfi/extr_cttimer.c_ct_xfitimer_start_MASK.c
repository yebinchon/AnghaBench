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
struct ct_timer_instance {int running; int /*<<< orphan*/  running_list; scalar_t__ need_update; struct ct_timer* timer_base; } ;
struct ct_timer {int /*<<< orphan*/  lock; int /*<<< orphan*/  running_head; int /*<<< orphan*/  wc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ct_timer*) ; 
 int /*<<< orphan*/  FUNC1 (struct ct_timer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct ct_timer_instance *ti)
{
	struct ct_timer *atimer = ti->timer_base;
	unsigned long flags;

	FUNC4(&atimer->lock, flags);
	if (FUNC3(&ti->running_list))
		atimer->wc = FUNC0(atimer);
	ti->running = 1;
	ti->need_update = 0;
	FUNC2(&ti->running_list, &atimer->running_head);
	FUNC5(&atimer->lock, flags);
	FUNC1(atimer);
}
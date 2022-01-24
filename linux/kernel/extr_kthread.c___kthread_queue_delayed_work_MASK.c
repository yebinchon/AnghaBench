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
struct timer_list {scalar_t__ function; scalar_t__ expires; } ;
struct kthread_worker {int /*<<< orphan*/  delayed_work_list; int /*<<< orphan*/  work_list; } ;
struct kthread_work {struct kthread_worker* worker; int /*<<< orphan*/  node; } ;
struct kthread_delayed_work {struct kthread_work work; struct timer_list timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct timer_list*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ kthread_delayed_work_timer_fn ; 
 int /*<<< orphan*/  FUNC2 (struct kthread_worker*,struct kthread_work*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kthread_worker*,struct kthread_work*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct kthread_worker *worker,
					 struct kthread_delayed_work *dwork,
					 unsigned long delay)
{
	struct timer_list *timer = &dwork->timer;
	struct kthread_work *work = &dwork->work;

	FUNC0(timer->function != kthread_delayed_work_timer_fn);

	/*
	 * If @delay is 0, queue @dwork->work immediately.  This is for
	 * both optimization and correctness.  The earliest @timer can
	 * expire is on the closest next tick and delayed_work users depend
	 * on that there's no such delay when @delay is 0.
	 */
	if (!delay) {
		FUNC2(worker, work, &worker->work_list);
		return;
	}

	/* Be paranoid and try to detect possible races already now. */
	FUNC3(worker, work);

	FUNC4(&work->node, &worker->delayed_work_list);
	work->worker = worker;
	timer->expires = jiffies + delay;
	FUNC1(timer);
}
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
struct kthread_worker {int /*<<< orphan*/  lock; int /*<<< orphan*/  work_list; } ;
struct kthread_work {int /*<<< orphan*/  node; struct kthread_worker* worker; } ;
struct kthread_delayed_work {struct kthread_work work; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct kthread_delayed_work* dwork ; 
 struct kthread_delayed_work* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kthread_worker*,struct kthread_work*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 

void FUNC7(struct timer_list *t)
{
	struct kthread_delayed_work *dwork = FUNC1(dwork, t, timer);
	struct kthread_work *work = &dwork->work;
	struct kthread_worker *worker = work->worker;
	unsigned long flags;

	/*
	 * This might happen when a pending work is reinitialized.
	 * It means that it is used a wrong way.
	 */
	if (FUNC0(!worker))
		return;

	FUNC5(&worker->lock, flags);
	/* Work must not be used with >1 worker, see kthread_queue_work(). */
	FUNC0(work->worker != worker);

	/* Move the work from worker->delayed_work_list. */
	FUNC0(FUNC4(&work->node));
	FUNC3(&work->node);
	FUNC2(worker, work, &worker->work_list);

	FUNC6(&worker->lock, flags);
}
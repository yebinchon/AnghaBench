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
struct kthread_worker {int /*<<< orphan*/  lock; } ;
struct kthread_work {scalar_t__ canceling; struct kthread_worker* worker; } ;
struct kthread_delayed_work {struct kthread_work work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct kthread_work*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct kthread_worker*,struct kthread_delayed_work*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC5(struct kthread_worker *worker,
			      struct kthread_delayed_work *dwork,
			      unsigned long delay)
{
	struct kthread_work *work = &dwork->work;
	unsigned long flags;
	int ret = false;

	FUNC3(&worker->lock, flags);

	/* Do not bother with canceling when never queued. */
	if (!work->worker)
		goto fast_queue;

	/* Work must not be used with >1 worker, see kthread_queue_work() */
	FUNC0(work->worker != worker);

	/* Do not fight with another command that is canceling this work. */
	if (work->canceling)
		goto out;

	ret = FUNC1(work, true, &flags);
fast_queue:
	FUNC2(worker, dwork, delay);
out:
	FUNC4(&worker->lock, flags);
	return ret;
}
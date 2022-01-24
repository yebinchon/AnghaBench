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
struct kthread_worker {int /*<<< orphan*/  lock; struct kthread_work* current_work; } ;
struct kthread_work {int /*<<< orphan*/  canceling; struct kthread_worker* worker; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct kthread_work*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct kthread_work*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC5(struct kthread_work *work, bool is_dwork)
{
	struct kthread_worker *worker = work->worker;
	unsigned long flags;
	int ret = false;

	if (!worker)
		goto out;

	FUNC3(&worker->lock, flags);
	/* Work must not be used with >1 worker, see kthread_queue_work(). */
	FUNC0(work->worker != worker);

	ret = FUNC1(work, is_dwork, &flags);

	if (worker->current_work != work)
		goto out_fast;

	/*
	 * The work is in progress and we need to wait with the lock released.
	 * In the meantime, block any queuing by setting the canceling counter.
	 */
	work->canceling++;
	FUNC4(&worker->lock, flags);
	FUNC2(work);
	FUNC3(&worker->lock, flags);
	work->canceling--;

out_fast:
	FUNC4(&worker->lock, flags);
out:
	return ret;
}
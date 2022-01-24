#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  next; } ;
struct kthread_worker {int /*<<< orphan*/  lock; TYPE_1__ work_list; struct kthread_work* current_work; } ;
struct TYPE_4__ {int /*<<< orphan*/  next; } ;
struct kthread_work {TYPE_2__ node; struct kthread_worker* worker; } ;
struct kthread_flush_work {int /*<<< orphan*/  done; int /*<<< orphan*/  work; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  kthread_flush_work_fn ; 
 int /*<<< orphan*/  FUNC3 (struct kthread_worker*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct kthread_work *work)
{
	struct kthread_flush_work fwork = {
		FUNC1(fwork.work, kthread_flush_work_fn),
		FUNC0(fwork.done),
	};
	struct kthread_worker *worker;
	bool noop = false;

	worker = work->worker;
	if (!worker)
		return;

	FUNC5(&worker->lock);
	/* Work must not be used with >1 worker, see kthread_queue_work(). */
	FUNC2(work->worker != worker);

	if (!FUNC4(&work->node))
		FUNC3(worker, &fwork.work, work->node.next);
	else if (worker->current_work == work)
		FUNC3(worker, &fwork.work,
				    worker->work_list.next);
	else
		noop = true;

	FUNC6(&worker->lock);

	if (!noop)
		FUNC7(&fwork.done);
}
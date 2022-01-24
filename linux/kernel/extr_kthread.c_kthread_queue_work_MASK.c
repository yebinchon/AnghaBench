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
struct kthread_worker {int /*<<< orphan*/  lock; int /*<<< orphan*/  work_list; } ;
struct kthread_work {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kthread_worker*,struct kthread_work*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kthread_worker*,struct kthread_work*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC4(struct kthread_worker *worker,
			struct kthread_work *work)
{
	bool ret = false;
	unsigned long flags;

	FUNC2(&worker->lock, flags);
	if (!FUNC1(worker, work)) {
		FUNC0(worker, work, &worker->work_list);
		ret = true;
	}
	FUNC3(&worker->lock, flags);
	return ret;
}
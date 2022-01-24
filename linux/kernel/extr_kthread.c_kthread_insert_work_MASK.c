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
struct list_head {int dummy; } ;
struct kthread_worker {int /*<<< orphan*/  task; int /*<<< orphan*/  current_work; } ;
struct kthread_work {struct kthread_worker* worker; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kthread_worker*,struct kthread_work*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct kthread_worker *worker,
				struct kthread_work *work,
				struct list_head *pos)
{
	FUNC0(worker, work);

	FUNC2(&work->node, pos);
	work->worker = worker;
	if (!worker->current_work && FUNC1(worker->task))
		FUNC3(worker->task);
}
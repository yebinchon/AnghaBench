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
struct kthread_work {struct kthread_worker* worker; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct kthread_worker *worker,
					     struct kthread_work *work)
{
	FUNC2(&worker->lock);
	FUNC0(!FUNC1(&work->node));
	/* Do not use a work with >1 worker, see kthread_queue_work() */
	FUNC0(work->worker && work->worker != worker);
}
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
struct worker_pool {int /*<<< orphan*/  lock; int /*<<< orphan*/  worklist; int /*<<< orphan*/  nr_running; } ;
struct worker {int flags; int sleeping; int /*<<< orphan*/  task; struct worker_pool* pool; } ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int WORKER_NOT_RUNNING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct worker* FUNC2 (struct worker_pool*) ; 
 struct worker* FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct task_struct *task)
{
	struct worker *next, *worker = FUNC3(task);
	struct worker_pool *pool;

	/*
	 * Rescuers, which may not have all the fields set up like normal
	 * workers, also reach here, let's not access anything before
	 * checking NOT_RUNNING.
	 */
	if (worker->flags & WORKER_NOT_RUNNING)
		return;

	pool = worker->pool;

	if (FUNC0(worker->sleeping))
		return;

	worker->sleeping = 1;
	FUNC5(&pool->lock);

	/*
	 * The counterpart of the following dec_and_test, implied mb,
	 * worklist not empty test sequence is in insert_work().
	 * Please read comment there.
	 *
	 * NOT_RUNNING is clear.  This means that we're bound to and
	 * running on the local cpu w/ rq lock held and preemption
	 * disabled, which in turn means that none else could be
	 * manipulating idle_list, so dereferencing idle_list without pool
	 * lock is safe.
	 */
	if (FUNC1(&pool->nr_running) &&
	    !FUNC4(&pool->worklist)) {
		next = FUNC2(pool);
		if (next)
			FUNC7(next->task);
	}
	FUNC6(&pool->lock);
}
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
struct worker_pool {int /*<<< orphan*/  nr_idle; int /*<<< orphan*/  nr_workers; int /*<<< orphan*/  lock; } ;
struct worker {int current_work; int flags; int /*<<< orphan*/  task; int /*<<< orphan*/  entry; int /*<<< orphan*/  scheduled; struct worker_pool* pool; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int WORKER_DIE ; 
 int WORKER_IDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct worker *worker)
{
	struct worker_pool *pool = worker->pool;

	FUNC3(&pool->lock);

	/* sanity check frenzy */
	if (FUNC0(worker->current_work) ||
	    FUNC0(!FUNC2(&worker->scheduled)) ||
	    FUNC0(!(worker->flags & WORKER_IDLE)))
		return;

	pool->nr_workers--;
	pool->nr_idle--;

	FUNC1(&worker->entry);
	worker->flags |= WORKER_DIE;
	FUNC4(worker->task);
}
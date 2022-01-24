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
struct worker_pool {struct completion* detach_completion; int /*<<< orphan*/  workers; } ;
struct worker {int flags; struct worker_pool* pool; int /*<<< orphan*/  node; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int WORKER_REBOUND ; 
 int WORKER_UNBOUND ; 
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wq_pool_attach_mutex ; 

__attribute__((used)) static void FUNC5(struct worker *worker)
{
	struct worker_pool *pool = worker->pool;
	struct completion *detach_completion = NULL;

	FUNC3(&wq_pool_attach_mutex);

	FUNC1(&worker->node);
	worker->pool = NULL;

	if (FUNC2(&pool->workers))
		detach_completion = pool->detach_completion;
	FUNC4(&wq_pool_attach_mutex);

	/* clear leftover flags without pool->lock after it is detached */
	worker->flags &= ~(WORKER_UNBOUND | WORKER_REBOUND);

	if (detach_completion)
		FUNC0(detach_completion);
}
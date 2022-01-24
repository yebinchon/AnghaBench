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
struct worker_pool {scalar_t__ cpu; scalar_t__ id; int flags; int /*<<< orphan*/  rcu; int /*<<< orphan*/  mayday_timer; int /*<<< orphan*/  idle_timer; int /*<<< orphan*/ * detach_completion; int /*<<< orphan*/  workers; int /*<<< orphan*/  lock; scalar_t__ nr_idle; scalar_t__ nr_workers; int /*<<< orphan*/  hash_node; int /*<<< orphan*/  worklist; scalar_t__ refcnt; } ;
struct worker {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int POOL_MANAGER_ACTIVE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct worker*) ; 
 int /*<<< orphan*/  detach_completion ; 
 struct worker* FUNC5 (struct worker_pool*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu_free_pool ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  worker_pool_idr ; 
 int /*<<< orphan*/  wq_manager_wait ; 
 int /*<<< orphan*/  wq_pool_attach_mutex ; 
 int /*<<< orphan*/  wq_pool_mutex ; 

__attribute__((used)) static void FUNC16(struct worker_pool *pool)
{
	FUNC0(detach_completion);
	struct worker *worker;

	FUNC9(&wq_pool_mutex);

	if (--pool->refcnt)
		return;

	/* sanity checks */
	if (FUNC1(!(pool->cpu < 0)) ||
	    FUNC1(!FUNC8(&pool->worklist)))
		return;

	/* release id and unhash */
	if (pool->id >= 0)
		FUNC7(&worker_pool_idr, pool->id);
	FUNC6(&pool->hash_node);

	/*
	 * Become the manager and destroy all workers.  This prevents
	 * @pool's workers from blocking on attach_mutex.  We're the last
	 * manager and @pool gets freed with the flag set.
	 */
	FUNC12(&pool->lock);
	FUNC14(wq_manager_wait,
			    !(pool->flags & POOL_MANAGER_ACTIVE), pool->lock);
	pool->flags |= POOL_MANAGER_ACTIVE;

	while ((worker = FUNC5(pool)))
		FUNC4(worker);
	FUNC1(pool->nr_workers || pool->nr_idle);
	FUNC13(&pool->lock);

	FUNC10(&wq_pool_attach_mutex);
	if (!FUNC8(&pool->workers))
		pool->detach_completion = &detach_completion;
	FUNC11(&wq_pool_attach_mutex);

	if (pool->detach_completion)
		FUNC15(pool->detach_completion);

	/* shut down the timers */
	FUNC3(&pool->idle_timer);
	FUNC3(&pool->mayday_timer);

	/* RCU protected to allow dereferences from get_work_pool() */
	FUNC2(&pool->rcu, rcu_free_pool);
}
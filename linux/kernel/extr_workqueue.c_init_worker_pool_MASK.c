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
struct worker_pool {int id; int cpu; int refcnt; int /*<<< orphan*/  attrs; int /*<<< orphan*/  hash_node; int /*<<< orphan*/  worker_ida; int /*<<< orphan*/  workers; int /*<<< orphan*/  mayday_timer; int /*<<< orphan*/  idle_timer; int /*<<< orphan*/  busy_hash; int /*<<< orphan*/  idle_list; int /*<<< orphan*/  worklist; int /*<<< orphan*/  watchdog_ts; int /*<<< orphan*/  flags; int /*<<< orphan*/  node; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int /*<<< orphan*/  POOL_DISASSOCIATED ; 
 int /*<<< orphan*/  TIMER_DEFERRABLE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  idle_worker_timeout ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  pool_mayday_timeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct worker_pool *pool)
{
	FUNC5(&pool->lock);
	pool->id = -1;
	pool->cpu = -1;
	pool->node = NUMA_NO_NODE;
	pool->flags |= POOL_DISASSOCIATED;
	pool->watchdog_ts = jiffies;
	FUNC1(&pool->worklist);
	FUNC1(&pool->idle_list);
	FUNC3(pool->busy_hash);

	FUNC6(&pool->idle_timer, idle_worker_timeout, TIMER_DEFERRABLE);

	FUNC6(&pool->mayday_timer, pool_mayday_timeout, 0);

	FUNC1(&pool->workers);

	FUNC4(&pool->worker_ida);
	FUNC0(&pool->hash_node);
	pool->refcnt = 1;

	/* shouldn't fail above this point */
	pool->attrs = FUNC2();
	if (!pool->attrs)
		return -ENOMEM;
	return 0;
}
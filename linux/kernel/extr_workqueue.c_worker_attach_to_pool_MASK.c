#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct worker_pool {int flags; int /*<<< orphan*/  workers; TYPE_1__* attrs; } ;
struct worker {struct worker_pool* pool; int /*<<< orphan*/  node; int /*<<< orphan*/  flags; int /*<<< orphan*/  task; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int POOL_DISASSOCIATED ; 
 int /*<<< orphan*/  WORKER_UNBOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wq_pool_attach_mutex ; 

__attribute__((used)) static void FUNC4(struct worker *worker,
				   struct worker_pool *pool)
{
	FUNC1(&wq_pool_attach_mutex);

	/*
	 * set_cpus_allowed_ptr() will fail if the cpumask doesn't have any
	 * online CPUs.  It'll be re-applied when any of the CPUs come up.
	 */
	FUNC3(worker->task, pool->attrs->cpumask);

	/*
	 * The wq_pool_attach_mutex ensures %POOL_DISASSOCIATED remains
	 * stable across this function.  See the comments above the flag
	 * definition for details.
	 */
	if (pool->flags & POOL_DISASSOCIATED)
		worker->flags |= WORKER_UNBOUND;

	FUNC0(&worker->node, &pool->workers);
	worker->pool = pool;

	FUNC2(&wq_pool_attach_mutex);
}
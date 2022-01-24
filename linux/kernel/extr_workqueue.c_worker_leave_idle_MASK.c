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
struct worker_pool {int /*<<< orphan*/  nr_idle; } ;
struct worker {int flags; int /*<<< orphan*/  entry; struct worker_pool* pool; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int WORKER_IDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct worker*,int) ; 

__attribute__((used)) static void FUNC3(struct worker *worker)
{
	struct worker_pool *pool = worker->pool;

	if (FUNC0(!(worker->flags & WORKER_IDLE)))
		return;
	FUNC2(worker, WORKER_IDLE);
	pool->nr_idle--;
	FUNC1(&worker->entry);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct worker_pool {int cpu; int id; int /*<<< orphan*/  worker_ida; int /*<<< orphan*/  lock; TYPE_1__* attrs; int /*<<< orphan*/  node; } ;
struct worker {int id; int /*<<< orphan*/  task; TYPE_2__* pool; } ;
typedef  int /*<<< orphan*/  id_buf ;
struct TYPE_4__ {int /*<<< orphan*/  nr_workers; } ;
struct TYPE_3__ {scalar_t__ nice; int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct worker* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct worker*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct worker*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct worker*,struct worker_pool*) ; 
 int /*<<< orphan*/  FUNC13 (struct worker*) ; 
 int /*<<< orphan*/  worker_thread ; 

__attribute__((used)) static struct worker *FUNC14(struct worker_pool *pool)
{
	struct worker *worker = NULL;
	int id = -1;
	char id_buf[16];

	/* ID is needed to determine kthread name */
	id = FUNC2(&pool->worker_ida, 0, 0, GFP_KERNEL);
	if (id < 0)
		goto fail;

	worker = FUNC1(pool->node);
	if (!worker)
		goto fail;

	worker->id = id;

	if (pool->cpu >= 0)
		FUNC8(id_buf, sizeof(id_buf), "%d:%d%s", pool->cpu, id,
			 pool->attrs->nice < 0  ? "H" : "");
	else
		FUNC8(id_buf, sizeof(id_buf), "u%d:%d", pool->id, id);

	worker->task = FUNC6(worker_thread, worker, pool->node,
					      "kworker/%s", id_buf);
	if (FUNC0(worker->task))
		goto fail;

	FUNC7(worker->task, pool->attrs->nice);
	FUNC5(worker->task, pool->attrs->cpumask);

	/* successful, attach the worker to the pool */
	FUNC12(worker, pool);

	/* start the newly created worker */
	FUNC9(&pool->lock);
	worker->pool->nr_workers++;
	FUNC13(worker);
	FUNC11(worker->task);
	FUNC10(&pool->lock);

	return worker;

fail:
	if (id >= 0)
		FUNC3(&pool->worker_ida, id);
	FUNC4(worker);
	return NULL;
}
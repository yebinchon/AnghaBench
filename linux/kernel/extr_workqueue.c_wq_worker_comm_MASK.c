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
struct worker_pool {int /*<<< orphan*/  lock; } ;
struct worker {char* desc; scalar_t__ current_work; struct worker_pool* pool; } ;
struct task_struct {int flags; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int PF_WQ_WORKER ; 
 struct worker* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  wq_pool_attach_mutex ; 

void FUNC7(char *buf, size_t size, struct task_struct *task)
{
	int off;

	/* always show the actual comm */
	off = FUNC6(buf, task->comm, size);
	if (off < 0)
		return;

	/* stabilize PF_WQ_WORKER and worker pool association */
	FUNC1(&wq_pool_attach_mutex);

	if (task->flags & PF_WQ_WORKER) {
		struct worker *worker = FUNC0(task);
		struct worker_pool *pool = worker->pool;

		if (pool) {
			FUNC4(&pool->lock);
			/*
			 * ->desc tracks information (wq name or
			 * set_worker_desc()) for the latest execution.  If
			 * current, prepend '+', otherwise '-'.
			 */
			if (worker->desc[0] != '\0') {
				if (worker->current_work)
					FUNC3(buf + off, size - off, "+%s",
						  worker->desc);
				else
					FUNC3(buf + off, size - off, "-%s",
						  worker->desc);
			}
			FUNC5(&pool->lock);
		}
	}

	FUNC2(&wq_pool_attach_mutex);
}
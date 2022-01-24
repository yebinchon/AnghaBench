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
struct rpc_wait_queue {int /*<<< orphan*/  lock; } ;
struct rpc_task {scalar_t__ tk_timeout; int /*<<< orphan*/  tk_priority; } ;
typedef  int /*<<< orphan*/  rpc_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_wait_queue*,struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct rpc_wait_queue *q, struct rpc_task *task,
				rpc_action action)
{
	if (!FUNC3(task))
		return;

	FUNC2(task, action);

	FUNC0(task->tk_timeout != 0);
	/*
	 * Protect the queue operations.
	 */
	FUNC4(&q->lock);
	FUNC1(q, task, task->tk_priority);
	FUNC5(&q->lock);
}
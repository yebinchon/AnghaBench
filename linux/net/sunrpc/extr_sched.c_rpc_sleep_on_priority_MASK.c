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
struct rpc_task {scalar_t__ tk_timeout; } ;

/* Variables and functions */
 scalar_t__ RPC_PRIORITY_LOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_wait_queue*,struct rpc_task*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct rpc_wait_queue *q, struct rpc_task *task,
		int priority)
{
	if (!FUNC2(task))
		return;

	FUNC0(task->tk_timeout != 0);
	priority -= RPC_PRIORITY_LOW;
	/*
	 * Protect the queue operations.
	 */
	FUNC3(&q->lock);
	FUNC1(q, task, priority);
	FUNC4(&q->lock);
}
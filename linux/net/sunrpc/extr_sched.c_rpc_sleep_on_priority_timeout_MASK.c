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
struct rpc_task {int dummy; } ;

/* Variables and functions */
 scalar_t__ RPC_PRIORITY_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_wait_queue*,struct rpc_task*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct rpc_wait_queue *q,
		struct rpc_task *task, unsigned long timeout, int priority)
{
	if (!FUNC1(task))
		return;

	priority -= RPC_PRIORITY_LOW;
	/*
	 * Protect the queue operations.
	 */
	FUNC2(&q->lock);
	FUNC0(q, task, timeout, priority);
	FUNC3(&q->lock);
}
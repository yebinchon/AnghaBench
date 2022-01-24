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
struct rpc_wait_queue {int dummy; } ;
struct rpc_task {int /*<<< orphan*/  tk_waitqueue; int /*<<< orphan*/  tk_runstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERESTARTSYS ; 
 struct rpc_wait_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*) ; 
 int /*<<< orphan*/  RPC_TASK_SIGNALLED ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_wait_queue*,struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct rpc_task *task)
{
	struct rpc_wait_queue *queue;

	if (!FUNC1(task))
		return;
	FUNC3(RPC_TASK_SIGNALLED, &task->tk_runstate);
	FUNC4();
	queue = FUNC0(task->tk_waitqueue);
	if (queue)
		FUNC2(queue, task, -ERESTARTSYS);
}
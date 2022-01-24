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
struct rpc_xprt {int /*<<< orphan*/  queue_lock; } ;
struct rpc_task {int /*<<< orphan*/  tk_runstate; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {struct rpc_xprt* rq_xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_TASK_MSG_PIN_WAIT ; 
 int /*<<< orphan*/  RPC_TASK_NEED_RECV ; 
 int /*<<< orphan*/  RPC_TASK_NEED_XMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_rqst*) ; 

void
FUNC9(struct rpc_task *task)
{
	struct rpc_rqst	*req = task->tk_rqstp;
	struct rpc_xprt *xprt = req->rq_xprt;

	if (FUNC4(RPC_TASK_NEED_XMIT, &task->tk_runstate) ||
	    FUNC4(RPC_TASK_NEED_RECV, &task->tk_runstate) ||
	    FUNC5(req)) {
		FUNC2(&xprt->queue_lock);
		FUNC7(task);
		FUNC6(task);
		while (FUNC5(req)) {
			FUNC1(RPC_TASK_MSG_PIN_WAIT, &task->tk_runstate);
			FUNC3(&xprt->queue_lock);
			FUNC8(req);
			FUNC2(&xprt->queue_lock);
			FUNC0(RPC_TASK_MSG_PIN_WAIT, &task->tk_runstate);
		}
		FUNC3(&xprt->queue_lock);
	}
}
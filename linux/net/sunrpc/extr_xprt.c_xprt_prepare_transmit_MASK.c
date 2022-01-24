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
struct rpc_xprt {int /*<<< orphan*/  sending; } ;
struct rpc_task {int /*<<< orphan*/  tk_runstate; int /*<<< orphan*/  tk_pid; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {struct rpc_xprt* rq_xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_TASK_NEED_XMIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_xprt*,struct rpc_task*) ; 

bool FUNC4(struct rpc_task *task)
{
	struct rpc_rqst	*req = task->tk_rqstp;
	struct rpc_xprt	*xprt = req->rq_xprt;

	FUNC0("RPC: %5u xprt_prepare_transmit\n", task->tk_pid);

	if (!FUNC3(xprt, task)) {
		/* Race breaker: someone may have transmitted us */
		if (!FUNC2(RPC_TASK_NEED_XMIT, &task->tk_runstate))
			FUNC1(&xprt->sending,
					task, 0);
		return false;

	}
	return true;
}
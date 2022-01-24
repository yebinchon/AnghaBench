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
struct rpc_xprt {int /*<<< orphan*/  timer; int /*<<< orphan*/  queue_lock; } ;
struct rpc_task {int /*<<< orphan*/  tk_runstate; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_rcv_buf; int /*<<< orphan*/  rq_private_buf; struct rpc_xprt* rq_xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_TASK_NEED_RECV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_task*,struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_xprt*,struct rpc_rqst*) ; 

void
FUNC8(struct rpc_task *task)
{
	struct rpc_rqst *req = task->tk_rqstp;
	struct rpc_xprt *xprt = req->rq_xprt;

	if (!FUNC5(task, req))
		return;

	FUNC6(task->tk_rqstp);
	FUNC3(&xprt->queue_lock);

	/* Update the softirq receive buffer */
	FUNC1(&req->rq_private_buf, &req->rq_rcv_buf,
			sizeof(req->rq_private_buf));

	/* Add request to the receive list */
	FUNC7(xprt, req);
	FUNC2(RPC_TASK_NEED_RECV, &task->tk_runstate);
	FUNC4(&xprt->queue_lock);

	/* Turn off autodisconnect */
	FUNC0(&xprt->timer);
}
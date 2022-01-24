#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rpc_xprt {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  pending; TYPE_1__* ops; } ;
struct rpc_task {int /*<<< orphan*/  tk_runstate; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {struct rpc_xprt* rq_xprt; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* wait_for_reply_request ) (struct rpc_task*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTCONN ; 
 int /*<<< orphan*/  RPC_TASK_NEED_RECV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_task*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct rpc_task*) ; 

void FUNC6(struct rpc_task *task)
{
	struct rpc_rqst *req = task->tk_rqstp;
	struct rpc_xprt *xprt = req->rq_xprt;

	if (!FUNC4(RPC_TASK_NEED_RECV, &task->tk_runstate))
		return;
	/*
	 * Sleep on the pending queue if we're expecting a reply.
	 * The spinlock ensures atomicity between the test of
	 * req->rq_reply_bytes_recvd, and the call to rpc_sleep_on().
	 */
	FUNC1(&xprt->queue_lock);
	if (FUNC4(RPC_TASK_NEED_RECV, &task->tk_runstate)) {
		xprt->ops->wait_for_reply_request(task);
		/*
		 * Send an extra queue wakeup call if the
		 * connection was dropped in case the call to
		 * rpc_sleep_on() raced.
		 */
		if (FUNC5(task))
			FUNC0(&xprt->pending,
					task, -ENOTCONN);
	}
	FUNC2(&xprt->queue_lock);
}
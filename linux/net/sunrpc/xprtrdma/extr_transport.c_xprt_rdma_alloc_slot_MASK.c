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
struct rpcrdma_xprt {int /*<<< orphan*/  rx_buf; } ;
struct rpcrdma_req {int /*<<< orphan*/  rl_slot; } ;
struct rpc_xprt {int /*<<< orphan*/  backlog; int /*<<< orphan*/  state; } ;
struct rpc_task {int /*<<< orphan*/  tk_status; int /*<<< orphan*/ * tk_rqstp; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  XPRT_CONGESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rpc_task*,int /*<<< orphan*/ *) ; 
 struct rpcrdma_req* FUNC1 (int /*<<< orphan*/ *) ; 
 struct rpcrdma_xprt* FUNC2 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct rpc_xprt *xprt, struct rpc_task *task)
{
	struct rpcrdma_xprt *r_xprt = FUNC2(xprt);
	struct rpcrdma_req *req;

	req = FUNC1(&r_xprt->rx_buf);
	if (!req)
		goto out_sleep;
	task->tk_rqstp = &req->rl_slot;
	task->tk_status = 0;
	return;

out_sleep:
	FUNC3(XPRT_CONGESTED, &xprt->state);
	FUNC0(&xprt->backlog, task, NULL);
	task->tk_status = -EAGAIN;
}
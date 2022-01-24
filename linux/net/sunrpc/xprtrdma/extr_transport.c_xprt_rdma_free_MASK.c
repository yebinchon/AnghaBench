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
struct rpcrdma_xprt {int dummy; } ;
struct rpcrdma_req {int /*<<< orphan*/  rl_registered; } ;
struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpcrdma_xprt*,struct rpcrdma_req*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rpcrdma_req* FUNC2 (struct rpc_rqst*) ; 
 struct rpcrdma_xprt* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_task*,struct rpcrdma_req*) ; 

__attribute__((used)) static void
FUNC5(struct rpc_task *task)
{
	struct rpc_rqst *rqst = task->tk_rqstp;
	struct rpcrdma_xprt *r_xprt = FUNC3(rqst->rq_xprt);
	struct rpcrdma_req *req = FUNC2(rqst);

	FUNC4(task, req);

	if (!FUNC1(&req->rl_registered))
		FUNC0(r_xprt, req);

	/* XXX: If the RPC is completing because of a signal and
	 * not because a reply was received, we ought to ensure
	 * that the Send completion has fired, so that memory
	 * involved with the Send is not still visible to the NIC.
	 */
}
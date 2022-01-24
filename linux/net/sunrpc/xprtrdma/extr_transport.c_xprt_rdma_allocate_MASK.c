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
struct rpcrdma_req {int /*<<< orphan*/  rl_recvbuf; int /*<<< orphan*/  rl_sendbuf; } ;
struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {void* rq_rbuffer; void* rq_buffer; int /*<<< orphan*/  rq_rcvsize; int /*<<< orphan*/  rq_callsize; int /*<<< orphan*/  rq_xprt; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_NOWAIT ; 
 int RPCRDMA_DEF_GFP ; 
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 int __GFP_MEMALLOC ; 
 int __GFP_NOWARN ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rpcrdma_req* FUNC2 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpcrdma_xprt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct rpcrdma_xprt* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_task*,struct rpcrdma_req*) ; 

__attribute__((used)) static int
FUNC6(struct rpc_task *task)
{
	struct rpc_rqst *rqst = task->tk_rqstp;
	struct rpcrdma_xprt *r_xprt = FUNC4(rqst->rq_xprt);
	struct rpcrdma_req *req = FUNC2(rqst);
	gfp_t flags;

	flags = RPCRDMA_DEF_GFP;
	if (FUNC0(task))
		flags = __GFP_MEMALLOC | GFP_NOWAIT | __GFP_NOWARN;

	if (!FUNC3(r_xprt, req->rl_sendbuf, rqst->rq_callsize,
				  flags))
		goto out_fail;
	if (!FUNC3(r_xprt, req->rl_recvbuf, rqst->rq_rcvsize,
				  flags))
		goto out_fail;

	rqst->rq_buffer = FUNC1(req->rl_sendbuf);
	rqst->rq_rbuffer = FUNC1(req->rl_recvbuf);
	FUNC5(task, req);
	return 0;

out_fail:
	FUNC5(task, NULL);
	return -ENOMEM;
}
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
struct rpcrdma_req {int /*<<< orphan*/ * rl_reply; } ;
struct rpc_xprt {int /*<<< orphan*/  bc_pa_lock; int /*<<< orphan*/  bc_pa_list; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_bc_pa_list; struct rpc_xprt* rq_xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rpcrdma_req* FUNC1 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_xprt*) ; 

void FUNC6(struct rpc_rqst *rqst)
{
	struct rpcrdma_req *req = FUNC1(rqst);
	struct rpc_xprt *xprt = rqst->rq_xprt;

	FUNC2(req->rl_reply);
	req->rl_reply = NULL;

	FUNC3(&xprt->bc_pa_lock);
	FUNC0(&rqst->rq_bc_pa_list, &xprt->bc_pa_list);
	FUNC4(&xprt->bc_pa_lock);
	FUNC5(xprt);
}
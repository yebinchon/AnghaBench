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
struct rpcrdma_xprt {int /*<<< orphan*/  rx_ep; int /*<<< orphan*/  rx_ia; } ;
struct rpcrdma_req {int dummy; } ;
struct rpc_xprt {int dummy; } ;
struct rpc_rqst {struct rpc_xprt* rq_xprt; } ;

/* Variables and functions */
 int EBADSLT ; 
 int ENOTCONN ; 
 struct rpcrdma_req* FUNC0 (struct rpc_rqst*) ; 
 int FUNC1 (struct rpc_rqst*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rpcrdma_req*) ; 
 struct rpcrdma_xprt* FUNC3 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_xprt*,struct rpc_rqst*) ; 

int FUNC7(struct rpc_rqst *rqst)
{
	struct rpc_xprt *xprt = rqst->rq_xprt;
	struct rpcrdma_xprt *r_xprt = FUNC3(xprt);
	struct rpcrdma_req *req = FUNC0(rqst);
	int rc;

	if (!FUNC4(xprt))
		return -ENOTCONN;

	if (!FUNC6(xprt, rqst))
		return -EBADSLT;

	rc = FUNC1(rqst);
	if (rc < 0)
		goto failed_marshal;

	if (FUNC2(&r_xprt->rx_ia, &r_xprt->rx_ep, req))
		goto drop_connection;
	return 0;

failed_marshal:
	if (rc != -ENOTCONN)
		return rc;
drop_connection:
	FUNC5(xprt);
	return -ENOTCONN;
}
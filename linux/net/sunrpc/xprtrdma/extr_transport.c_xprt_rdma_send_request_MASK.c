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
struct rpcrdma_xprt {int /*<<< orphan*/  rx_ep; int /*<<< orphan*/  rx_ia; } ;
struct rpcrdma_req {int dummy; } ;
struct rpc_xprt {scalar_t__ connect_cookie; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct rpc_rqst {scalar_t__ rq_connect_cookie; int /*<<< orphan*/  rq_task; TYPE_1__ rq_snd_buf; int /*<<< orphan*/  rq_xmit_bytes_sent; int /*<<< orphan*/  rq_xtime; int /*<<< orphan*/  rq_buffer; struct rpc_xprt* rq_xprt; } ;

/* Variables and functions */
 int EBADSLT ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct rpcrdma_req* FUNC2 (struct rpc_rqst*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rpcrdma_req*) ; 
 int FUNC4 (struct rpcrdma_xprt*,struct rpc_rqst*) ; 
 struct rpcrdma_xprt* FUNC5 (struct rpc_xprt*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_xprt*) ; 
 int FUNC8 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC9 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC10 (struct rpc_xprt*,struct rpc_rqst*) ; 

__attribute__((used)) static int
FUNC11(struct rpc_rqst *rqst)
{
	struct rpc_xprt *xprt = rqst->rq_xprt;
	struct rpcrdma_req *req = FUNC2(rqst);
	struct rpcrdma_xprt *r_xprt = FUNC5(xprt);
	int rc = 0;

#if defined(CONFIG_SUNRPC_BACKCHANNEL)
	if (unlikely(!rqst->rq_buffer))
		return xprt_rdma_bc_send_reply(rqst);
#endif	/* CONFIG_SUNRPC_BACKCHANNEL */

	if (!FUNC7(xprt))
		return -ENOTCONN;

	if (!FUNC10(xprt, rqst))
		return -EBADSLT;

	rc = FUNC4(r_xprt, rqst);
	if (rc < 0)
		goto failed_marshal;

	/* Must suppress retransmit to maintain credits */
	if (rqst->rq_connect_cookie == xprt->connect_cookie)
		goto drop_connection;
	rqst->rq_xtime = FUNC0();

	if (FUNC3(&r_xprt->rx_ia, &r_xprt->rx_ep, req))
		goto drop_connection;

	rqst->rq_xmit_bytes_sent += rqst->rq_snd_buf.len;

	/* An RPC with no reply will throw off credit accounting,
	 * so drop the connection to reset the credit grant.
	 */
	if (!FUNC1(rqst->rq_task))
		goto drop_connection;
	return 0;

failed_marshal:
	if (rc != -ENOTCONN)
		return rc;
drop_connection:
	FUNC9(xprt);
	return -ENOTCONN;
}
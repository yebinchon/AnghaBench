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
struct TYPE_2__ {int /*<<< orphan*/  rb_bc_srv_max_requests; } ;
struct rpcrdma_xprt {TYPE_1__ rx_buf; } ;
struct rpcrdma_req {int /*<<< orphan*/  rl_stream; int /*<<< orphan*/  rl_rdmabuf; int /*<<< orphan*/  rl_hdrbuf; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_snd_buf; int /*<<< orphan*/  rq_xid; int /*<<< orphan*/  rq_xprt; } ;
typedef  void* __be32 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  RPCRDMA_HDRLEN_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rdma_msg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct rpcrdma_req* FUNC2 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  rpcrdma_noch ; 
 scalar_t__ FUNC3 (struct rpcrdma_xprt*,struct rpcrdma_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpcrdma_version ; 
 struct rpcrdma_xprt* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_rqst*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rpc_rqst*) ; 
 void** FUNC9 (int /*<<< orphan*/ *,int) ; 
 void* xdr_zero ; 

__attribute__((used)) static int FUNC10(struct rpc_rqst *rqst)
{
	struct rpcrdma_xprt *r_xprt = FUNC5(rqst->rq_xprt);
	struct rpcrdma_req *req = FUNC2(rqst);
	__be32 *p;

	FUNC4(&req->rl_hdrbuf, 0);
	FUNC8(&req->rl_stream, &req->rl_hdrbuf,
			FUNC1(req->rl_rdmabuf), rqst);

	p = FUNC9(&req->rl_stream, 28);
	if (FUNC7(!p))
		return -EIO;
	*p++ = rqst->rq_xid;
	*p++ = rpcrdma_version;
	*p++ = FUNC0(r_xprt->rx_buf.rb_bc_srv_max_requests);
	*p++ = rdma_msg;
	*p++ = xdr_zero;
	*p++ = xdr_zero;
	*p = xdr_zero;

	if (FUNC3(r_xprt, req, RPCRDMA_HDRLEN_MIN,
				      &rqst->rq_snd_buf, rpcrdma_noch))
		return -EIO;

	FUNC6(rqst);
	return 0;
}
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
typedef  int u32 ;
struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int total_rdma_reply; int /*<<< orphan*/  fixup_copy_count; } ;
struct rpcrdma_xprt {TYPE_1__ rx_stats; } ;
struct rpcrdma_rep {struct xdr_stream rr_stream; } ;
struct rpc_rqst {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct xdr_stream*) ; 
 scalar_t__ FUNC1 (struct xdr_stream*,int*) ; 
 scalar_t__ FUNC2 (struct xdr_stream*,int*) ; 
 scalar_t__ FUNC3 (struct rpc_rqst*,char*,int,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xdr_stream*) ; 

__attribute__((used)) static int
FUNC8(struct rpcrdma_xprt *r_xprt, struct rpcrdma_rep *rep,
		   struct rpc_rqst *rqst)
{
	struct xdr_stream *xdr = &rep->rr_stream;
	u32 writelist, replychunk, rpclen;
	char *base;

	/* Decode the chunk lists */
	if (FUNC0(xdr))
		return -EIO;
	if (FUNC2(xdr, &writelist))
		return -EIO;
	if (FUNC1(xdr, &replychunk))
		return -EIO;

	/* RDMA_MSG sanity checks */
	if (FUNC4(replychunk))
		return -EIO;

	/* Build the RPC reply's Payload stream in rqst->rq_rcv_buf */
	base = (char *)FUNC6(xdr, 0);
	rpclen = FUNC7(xdr);
	r_xprt->rx_stats.fixup_copy_count +=
		FUNC3(rqst, base, rpclen, writelist & 3);

	r_xprt->rx_stats.total_rdma_reply += writelist;
	return rpclen + FUNC5(writelist);
}
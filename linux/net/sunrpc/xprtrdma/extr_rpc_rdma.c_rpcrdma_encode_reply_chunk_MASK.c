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
struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  total_rdma_request; int /*<<< orphan*/  reply_chunk_count; } ;
struct rpcrdma_xprt {TYPE_1__ rx_stats; } ;
struct rpcrdma_req {struct rpcrdma_mr_seg* rl_segments; struct xdr_stream rl_stream; } ;
struct rpcrdma_mr_seg {int dummy; } ;
struct rpcrdma_mr {scalar_t__ mr_nents; scalar_t__ mr_length; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_task; int /*<<< orphan*/  rq_rcv_buf; } ;
typedef  enum rpcrdma_chunktype { ____Placeholder_rpcrdma_chunktype } rpcrdma_chunktype ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EMSGSIZE ; 
 scalar_t__ FUNC0 (struct rpcrdma_mr_seg*) ; 
 int FUNC1 (struct rpcrdma_mr_seg*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct xdr_stream*) ; 
 scalar_t__ FUNC4 (struct xdr_stream*) ; 
 scalar_t__ FUNC5 (struct xdr_stream*,struct rpcrdma_mr*) ; 
 int FUNC6 (struct rpcrdma_xprt*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct rpcrdma_mr_seg*) ; 
 struct rpcrdma_mr_seg* FUNC7 (struct rpcrdma_xprt*,struct rpcrdma_req*,struct rpcrdma_mr_seg*,int,int,struct rpcrdma_mr**) ; 
 int rpcrdma_replych ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct rpcrdma_mr*,int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/ * FUNC10 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC11(struct rpcrdma_xprt *r_xprt,
				      struct rpcrdma_req *req,
				      struct rpc_rqst *rqst,
				      enum rpcrdma_chunktype wtype)
{
	struct xdr_stream *xdr = &req->rl_stream;
	struct rpcrdma_mr_seg *seg;
	struct rpcrdma_mr *mr;
	int nsegs, nchunks;
	__be32 *segcount;

	if (wtype != rpcrdma_replych)
		return FUNC3(xdr);

	seg = req->rl_segments;
	nsegs = FUNC6(r_xprt, &rqst->rq_rcv_buf, 0, wtype, seg);
	if (nsegs < 0)
		return nsegs;

	if (FUNC4(xdr) < 0)
		return -EMSGSIZE;
	segcount = FUNC10(xdr, sizeof(*segcount));
	if (FUNC9(!segcount))
		return -EMSGSIZE;
	/* Actual value encoded below */

	nchunks = 0;
	do {
		seg = FUNC7(r_xprt, req, seg, nsegs, true, &mr);
		if (FUNC0(seg))
			return FUNC1(seg);

		if (FUNC5(xdr, mr) < 0)
			return -EMSGSIZE;

		FUNC8(rqst->rq_task, mr, nsegs);
		r_xprt->rx_stats.reply_chunk_count++;
		r_xprt->rx_stats.total_rdma_request += mr->mr_length;
		nchunks++;
		nsegs -= mr->mr_nents;
	} while (nsegs);

	/* Update count of segments in the Reply chunk */
	*segcount = FUNC2(nchunks);

	return 0;
}
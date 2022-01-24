#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  failed_marshal_count; int /*<<< orphan*/  nomsg_call_count; } ;
struct TYPE_9__ {int /*<<< orphan*/  rb_max_requests; } ;
struct rpcrdma_xprt {TYPE_5__ rx_stats; TYPE_1__ rx_buf; } ;
struct TYPE_14__ {int /*<<< orphan*/  len; } ;
struct rpcrdma_req {TYPE_6__ rl_hdrbuf; int /*<<< orphan*/  rl_rdmabuf; struct xdr_stream rl_stream; } ;
struct TYPE_15__ {int flags; } ;
struct TYPE_12__ {int flags; } ;
struct rpc_rqst {TYPE_8__ rq_snd_buf; TYPE_4__ rq_rcv_buf; TYPE_3__* rq_cred; int /*<<< orphan*/  rq_xid; } ;
typedef  enum rpcrdma_chunktype { ____Placeholder_rpcrdma_chunktype } rpcrdma_chunktype ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_11__ {TYPE_2__* cr_auth; } ;
struct TYPE_10__ {int au_flags; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int RPCAUTH_AUTH_DATATOUCH ; 
 int XDRBUF_READ ; 
 int XDRBUF_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpcrdma_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpcrdma_req*) ; 
 void* rdma_msg ; 
 int /*<<< orphan*/  rdma_nomsg ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct rpcrdma_req* FUNC4 (struct rpc_rqst*) ; 
 int rpcrdma_areadch ; 
 scalar_t__ FUNC5 (struct rpcrdma_xprt*,struct rpc_rqst*) ; 
 int FUNC6 (struct rpcrdma_xprt*,struct rpcrdma_req*,struct rpc_rqst*,int) ; 
 int FUNC7 (struct rpcrdma_xprt*,struct rpcrdma_req*,struct rpc_rqst*,int) ; 
 int FUNC8 (struct rpcrdma_xprt*,struct rpcrdma_req*,struct rpc_rqst*,int) ; 
 int rpcrdma_noch ; 
 scalar_t__ FUNC9 (struct rpcrdma_xprt*,struct rpc_rqst*) ; 
 int FUNC10 (struct rpcrdma_xprt*,struct rpcrdma_req*,int /*<<< orphan*/ ,TYPE_8__*,int) ; 
 int rpcrdma_readch ; 
 int rpcrdma_replych ; 
 scalar_t__ FUNC11 (struct rpcrdma_xprt*,struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpcrdma_version ; 
 int rpcrdma_writech ; 
 int /*<<< orphan*/  FUNC13 (struct rpcrdma_req*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct rpc_rqst*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct xdr_stream*,TYPE_6__*,int /*<<< orphan*/ ,struct rpc_rqst*) ; 
 int /*<<< orphan*/ * FUNC16 (struct xdr_stream*,int) ; 

int
FUNC17(struct rpcrdma_xprt *r_xprt, struct rpc_rqst *rqst)
{
	struct rpcrdma_req *req = FUNC4(rqst);
	struct xdr_stream *xdr = &req->rl_stream;
	enum rpcrdma_chunktype rtype, wtype;
	bool ddp_allowed;
	__be32 *p;
	int ret;

	FUNC12(&req->rl_hdrbuf, 0);
	FUNC15(xdr, &req->rl_hdrbuf, FUNC3(req->rl_rdmabuf),
			rqst);

	/* Fixed header fields */
	ret = -EMSGSIZE;
	p = FUNC16(xdr, 4 * sizeof(*p));
	if (!p)
		goto out_err;
	*p++ = rqst->rq_xid;
	*p++ = rpcrdma_version;
	*p++ = FUNC0(r_xprt->rx_buf.rb_max_requests);

	/* When the ULP employs a GSS flavor that guarantees integrity
	 * or privacy, direct data placement of individual data items
	 * is not allowed.
	 */
	ddp_allowed = !(rqst->rq_cred->cr_auth->au_flags &
						RPCAUTH_AUTH_DATATOUCH);

	/*
	 * Chunks needed for results?
	 *
	 * o If the expected result is under the inline threshold, all ops
	 *   return as inline.
	 * o Large read ops return data as write chunk(s), header as
	 *   inline.
	 * o Large non-read ops return as a single reply chunk.
	 */
	if (FUNC11(r_xprt, rqst))
		wtype = rpcrdma_noch;
	else if ((ddp_allowed && rqst->rq_rcv_buf.flags & XDRBUF_READ) &&
		 FUNC9(r_xprt, rqst))
		wtype = rpcrdma_writech;
	else
		wtype = rpcrdma_replych;

	/*
	 * Chunks needed for arguments?
	 *
	 * o If the total request is under the inline threshold, all ops
	 *   are sent as inline.
	 * o Large write ops transmit data as read chunk(s), header as
	 *   inline.
	 * o Large non-write ops are sent with the entire message as a
	 *   single read chunk (protocol 0-position special case).
	 *
	 * This assumes that the upper layer does not present a request
	 * that both has a data payload, and whose non-data arguments
	 * by themselves are larger than the inline threshold.
	 */
	if (FUNC5(r_xprt, rqst)) {
		*p++ = rdma_msg;
		rtype = rpcrdma_noch;
	} else if (ddp_allowed && rqst->rq_snd_buf.flags & XDRBUF_WRITE) {
		*p++ = rdma_msg;
		rtype = rpcrdma_readch;
	} else {
		r_xprt->rx_stats.nomsg_call_count++;
		*p++ = rdma_nomsg;
		rtype = rpcrdma_areadch;
	}

	/* If this is a retransmit, discard previously registered
	 * chunks. Very likely the connection has been replaced,
	 * so these registrations are invalid and unusable.
	 */
	FUNC1(req);

	/* This implementation supports the following combinations
	 * of chunk lists in one RPC-over-RDMA Call message:
	 *
	 *   - Read list
	 *   - Write list
	 *   - Reply chunk
	 *   - Read list + Reply chunk
	 *
	 * It might not yet support the following combinations:
	 *
	 *   - Read list + Write list
	 *
	 * It does not support the following combinations:
	 *
	 *   - Write list + Reply chunk
	 *   - Read list + Write list + Reply chunk
	 *
	 * This implementation supports only a single chunk in each
	 * Read or Write list. Thus for example the client cannot
	 * send a Call message with a Position Zero Read chunk and a
	 * regular Read chunk at the same time.
	 */
	ret = FUNC6(r_xprt, req, rqst, rtype);
	if (ret)
		goto out_err;
	ret = FUNC8(r_xprt, req, rqst, wtype);
	if (ret)
		goto out_err;
	ret = FUNC7(r_xprt, req, rqst, wtype);
	if (ret)
		goto out_err;

	ret = FUNC10(r_xprt, req, req->rl_hdrbuf.len,
					&rqst->rq_snd_buf, rtype);
	if (ret)
		goto out_err;

	FUNC13(req, rtype, wtype);
	return 0;

out_err:
	FUNC14(rqst, ret);
	r_xprt->rx_stats.failed_marshal_count++;
	FUNC2(req);
	return ret;
}
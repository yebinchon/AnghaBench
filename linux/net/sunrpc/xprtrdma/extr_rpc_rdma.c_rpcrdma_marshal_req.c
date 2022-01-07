
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_13__ {int failed_marshal_count; int nomsg_call_count; } ;
struct TYPE_9__ {int rb_max_requests; } ;
struct rpcrdma_xprt {TYPE_5__ rx_stats; TYPE_1__ rx_buf; } ;
struct TYPE_14__ {int len; } ;
struct rpcrdma_req {TYPE_6__ rl_hdrbuf; int rl_rdmabuf; struct xdr_stream rl_stream; } ;
struct TYPE_15__ {int flags; } ;
struct TYPE_12__ {int flags; } ;
struct rpc_rqst {TYPE_8__ rq_snd_buf; TYPE_4__ rq_rcv_buf; TYPE_3__* rq_cred; int rq_xid; } ;
typedef enum rpcrdma_chunktype { ____Placeholder_rpcrdma_chunktype } rpcrdma_chunktype ;
typedef int __be32 ;
struct TYPE_11__ {TYPE_2__* cr_auth; } ;
struct TYPE_10__ {int au_flags; } ;


 int EMSGSIZE ;
 int RPCAUTH_AUTH_DATATOUCH ;
 int XDRBUF_READ ;
 int XDRBUF_WRITE ;
 int cpu_to_be32 (int ) ;
 int frwr_recycle (struct rpcrdma_req*) ;
 int frwr_reset (struct rpcrdma_req*) ;
 void* rdma_msg ;
 int rdma_nomsg ;
 int rdmab_data (int ) ;
 struct rpcrdma_req* rpcr_to_rdmar (struct rpc_rqst*) ;
 int rpcrdma_areadch ;
 scalar_t__ rpcrdma_args_inline (struct rpcrdma_xprt*,struct rpc_rqst*) ;
 int rpcrdma_encode_read_list (struct rpcrdma_xprt*,struct rpcrdma_req*,struct rpc_rqst*,int) ;
 int rpcrdma_encode_reply_chunk (struct rpcrdma_xprt*,struct rpcrdma_req*,struct rpc_rqst*,int) ;
 int rpcrdma_encode_write_list (struct rpcrdma_xprt*,struct rpcrdma_req*,struct rpc_rqst*,int) ;
 int rpcrdma_noch ;
 scalar_t__ rpcrdma_nonpayload_inline (struct rpcrdma_xprt*,struct rpc_rqst*) ;
 int rpcrdma_prepare_send_sges (struct rpcrdma_xprt*,struct rpcrdma_req*,int ,TYPE_8__*,int) ;
 int rpcrdma_readch ;
 int rpcrdma_replych ;
 scalar_t__ rpcrdma_results_inline (struct rpcrdma_xprt*,struct rpc_rqst*) ;
 int rpcrdma_set_xdrlen (TYPE_6__*,int ) ;
 int rpcrdma_version ;
 int rpcrdma_writech ;
 int trace_xprtrdma_marshal (struct rpcrdma_req*,int,int) ;
 int trace_xprtrdma_marshal_failed (struct rpc_rqst*,int) ;
 int xdr_init_encode (struct xdr_stream*,TYPE_6__*,int ,struct rpc_rqst*) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

int
rpcrdma_marshal_req(struct rpcrdma_xprt *r_xprt, struct rpc_rqst *rqst)
{
 struct rpcrdma_req *req = rpcr_to_rdmar(rqst);
 struct xdr_stream *xdr = &req->rl_stream;
 enum rpcrdma_chunktype rtype, wtype;
 bool ddp_allowed;
 __be32 *p;
 int ret;

 rpcrdma_set_xdrlen(&req->rl_hdrbuf, 0);
 xdr_init_encode(xdr, &req->rl_hdrbuf, rdmab_data(req->rl_rdmabuf),
   rqst);


 ret = -EMSGSIZE;
 p = xdr_reserve_space(xdr, 4 * sizeof(*p));
 if (!p)
  goto out_err;
 *p++ = rqst->rq_xid;
 *p++ = rpcrdma_version;
 *p++ = cpu_to_be32(r_xprt->rx_buf.rb_max_requests);





 ddp_allowed = !(rqst->rq_cred->cr_auth->au_flags &
      RPCAUTH_AUTH_DATATOUCH);
 if (rpcrdma_results_inline(r_xprt, rqst))
  wtype = rpcrdma_noch;
 else if ((ddp_allowed && rqst->rq_rcv_buf.flags & XDRBUF_READ) &&
   rpcrdma_nonpayload_inline(r_xprt, rqst))
  wtype = rpcrdma_writech;
 else
  wtype = rpcrdma_replych;
 if (rpcrdma_args_inline(r_xprt, rqst)) {
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





 frwr_recycle(req);
 ret = rpcrdma_encode_read_list(r_xprt, req, rqst, rtype);
 if (ret)
  goto out_err;
 ret = rpcrdma_encode_write_list(r_xprt, req, rqst, wtype);
 if (ret)
  goto out_err;
 ret = rpcrdma_encode_reply_chunk(r_xprt, req, rqst, wtype);
 if (ret)
  goto out_err;

 ret = rpcrdma_prepare_send_sges(r_xprt, req, req->rl_hdrbuf.len,
     &rqst->rq_snd_buf, rtype);
 if (ret)
  goto out_err;

 trace_xprtrdma_marshal(req, rtype, wtype);
 return 0;

out_err:
 trace_xprtrdma_marshal_failed(rqst, ret);
 r_xprt->rx_stats.failed_marshal_count++;
 frwr_reset(req);
 return ret;
}

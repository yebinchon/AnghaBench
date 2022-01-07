
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rb_bc_srv_max_requests; } ;
struct rpcrdma_xprt {TYPE_1__ rx_buf; } ;
struct rpcrdma_req {int rl_stream; int rl_rdmabuf; int rl_hdrbuf; } ;
struct rpc_rqst {int rq_snd_buf; int rq_xid; int rq_xprt; } ;
typedef void* __be32 ;


 int EIO ;
 int RPCRDMA_HDRLEN_MIN ;
 int cpu_to_be32 (int ) ;
 int rdma_msg ;
 int rdmab_data (int ) ;
 struct rpcrdma_req* rpcr_to_rdmar (struct rpc_rqst*) ;
 int rpcrdma_noch ;
 scalar_t__ rpcrdma_prepare_send_sges (struct rpcrdma_xprt*,struct rpcrdma_req*,int ,int *,int ) ;
 int rpcrdma_set_xdrlen (int *,int ) ;
 int rpcrdma_version ;
 struct rpcrdma_xprt* rpcx_to_rdmax (int ) ;
 int trace_xprtrdma_cb_reply (struct rpc_rqst*) ;
 scalar_t__ unlikely (int) ;
 int xdr_init_encode (int *,int *,int ,struct rpc_rqst*) ;
 void** xdr_reserve_space (int *,int) ;
 void* xdr_zero ;

__attribute__((used)) static int rpcrdma_bc_marshal_reply(struct rpc_rqst *rqst)
{
 struct rpcrdma_xprt *r_xprt = rpcx_to_rdmax(rqst->rq_xprt);
 struct rpcrdma_req *req = rpcr_to_rdmar(rqst);
 __be32 *p;

 rpcrdma_set_xdrlen(&req->rl_hdrbuf, 0);
 xdr_init_encode(&req->rl_stream, &req->rl_hdrbuf,
   rdmab_data(req->rl_rdmabuf), rqst);

 p = xdr_reserve_space(&req->rl_stream, 28);
 if (unlikely(!p))
  return -EIO;
 *p++ = rqst->rq_xid;
 *p++ = rpcrdma_version;
 *p++ = cpu_to_be32(r_xprt->rx_buf.rb_bc_srv_max_requests);
 *p++ = rdma_msg;
 *p++ = xdr_zero;
 *p++ = xdr_zero;
 *p = xdr_zero;

 if (rpcrdma_prepare_send_sges(r_xprt, req, RPCRDMA_HDRLEN_MIN,
          &rqst->rq_snd_buf, rpcrdma_noch))
  return -EIO;

 trace_xprtrdma_cb_reply(rqst);
 return 0;
}

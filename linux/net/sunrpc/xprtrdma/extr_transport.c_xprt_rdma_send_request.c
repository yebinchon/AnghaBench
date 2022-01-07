
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpcrdma_xprt {int rx_ep; int rx_ia; } ;
struct rpcrdma_req {int dummy; } ;
struct rpc_xprt {scalar_t__ connect_cookie; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct rpc_rqst {scalar_t__ rq_connect_cookie; int rq_task; TYPE_1__ rq_snd_buf; int rq_xmit_bytes_sent; int rq_xtime; int rq_buffer; struct rpc_xprt* rq_xprt; } ;


 int EBADSLT ;
 int ENOTCONN ;
 int ktime_get () ;
 int rpc_reply_expected (int ) ;
 struct rpcrdma_req* rpcr_to_rdmar (struct rpc_rqst*) ;
 scalar_t__ rpcrdma_ep_post (int *,int *,struct rpcrdma_req*) ;
 int rpcrdma_marshal_req (struct rpcrdma_xprt*,struct rpc_rqst*) ;
 struct rpcrdma_xprt* rpcx_to_rdmax (struct rpc_xprt*) ;
 scalar_t__ unlikely (int) ;
 int xprt_connected (struct rpc_xprt*) ;
 int xprt_rdma_bc_send_reply (struct rpc_rqst*) ;
 int xprt_rdma_close (struct rpc_xprt*) ;
 int xprt_request_get_cong (struct rpc_xprt*,struct rpc_rqst*) ;

__attribute__((used)) static int
xprt_rdma_send_request(struct rpc_rqst *rqst)
{
 struct rpc_xprt *xprt = rqst->rq_xprt;
 struct rpcrdma_req *req = rpcr_to_rdmar(rqst);
 struct rpcrdma_xprt *r_xprt = rpcx_to_rdmax(xprt);
 int rc = 0;






 if (!xprt_connected(xprt))
  return -ENOTCONN;

 if (!xprt_request_get_cong(xprt, rqst))
  return -EBADSLT;

 rc = rpcrdma_marshal_req(r_xprt, rqst);
 if (rc < 0)
  goto failed_marshal;


 if (rqst->rq_connect_cookie == xprt->connect_cookie)
  goto drop_connection;
 rqst->rq_xtime = ktime_get();

 if (rpcrdma_ep_post(&r_xprt->rx_ia, &r_xprt->rx_ep, req))
  goto drop_connection;

 rqst->rq_xmit_bytes_sent += rqst->rq_snd_buf.len;




 if (!rpc_reply_expected(rqst->rq_task))
  goto drop_connection;
 return 0;

failed_marshal:
 if (rc != -ENOTCONN)
  return rc;
drop_connection:
 xprt_rdma_close(xprt);
 return -ENOTCONN;
}

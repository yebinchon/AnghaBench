
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpcrdma_req {int rl_kref; TYPE_1__* rl_sendctx; } ;
struct rpcrdma_ia {int dummy; } ;
struct rpcrdma_ep {scalar_t__ rep_send_count; scalar_t__ rep_send_batch; } ;
struct ib_send_wr {int send_flags; } ;
struct TYPE_2__ {struct ib_send_wr sc_wr; } ;


 int ENOTCONN ;
 int IB_SEND_SIGNALED ;
 int frwr_send (struct rpcrdma_ia*,struct rpcrdma_req*) ;
 int kref_read (int *) ;
 int trace_xprtrdma_post_send (struct rpcrdma_req*,int) ;

int
rpcrdma_ep_post(struct rpcrdma_ia *ia,
  struct rpcrdma_ep *ep,
  struct rpcrdma_req *req)
{
 struct ib_send_wr *send_wr = &req->rl_sendctx->sc_wr;
 int rc;

 if (!ep->rep_send_count || kref_read(&req->rl_kref) > 1) {
  send_wr->send_flags |= IB_SEND_SIGNALED;
  ep->rep_send_count = ep->rep_send_batch;
 } else {
  send_wr->send_flags &= ~IB_SEND_SIGNALED;
  --ep->rep_send_count;
 }

 rc = frwr_send(ia, req);
 trace_xprtrdma_post_send(req, rc);
 if (rc)
  return -ENOTCONN;
 return 0;
}

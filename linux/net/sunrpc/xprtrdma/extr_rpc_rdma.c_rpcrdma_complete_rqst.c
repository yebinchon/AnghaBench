
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bad_reply_count; } ;
struct rpc_xprt {int queue_lock; } ;
struct rpcrdma_xprt {TYPE_1__ rx_stats; struct rpc_xprt rx_xprt; } ;
struct rpcrdma_rep {int rr_proc; struct rpc_rqst* rr_rqst; struct rpcrdma_xprt* rr_rxprt; } ;
struct rpc_rqst {int rq_task; } ;


 int EIO ;



 int rpcrdma_decode_error (struct rpcrdma_xprt*,struct rpcrdma_rep*,struct rpc_rqst*) ;
 int rpcrdma_decode_msg (struct rpcrdma_xprt*,struct rpcrdma_rep*,struct rpc_rqst*) ;
 int rpcrdma_decode_nomsg (struct rpcrdma_xprt*,struct rpcrdma_rep*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_xprtrdma_reply_hdr (struct rpcrdma_rep*) ;
 int xprt_complete_rqst (int ,int) ;
 int xprt_unpin_rqst (struct rpc_rqst*) ;

void rpcrdma_complete_rqst(struct rpcrdma_rep *rep)
{
 struct rpcrdma_xprt *r_xprt = rep->rr_rxprt;
 struct rpc_xprt *xprt = &r_xprt->rx_xprt;
 struct rpc_rqst *rqst = rep->rr_rqst;
 int status;

 switch (rep->rr_proc) {
 case 129:
  status = rpcrdma_decode_msg(r_xprt, rep, rqst);
  break;
 case 128:
  status = rpcrdma_decode_nomsg(r_xprt, rep);
  break;
 case 130:
  status = rpcrdma_decode_error(r_xprt, rep, rqst);
  break;
 default:
  status = -EIO;
 }
 if (status < 0)
  goto out_badheader;

out:
 spin_lock(&xprt->queue_lock);
 xprt_complete_rqst(rqst->rq_task, status);
 xprt_unpin_rqst(rqst);
 spin_unlock(&xprt->queue_lock);
 return;





out_badheader:
 trace_xprtrdma_reply_hdr(rep);
 r_xprt->rx_stats.bad_reply_count++;
 goto out;
}

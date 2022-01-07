
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int rb_refresh_worker; } ;
struct TYPE_5__ {int rep_connected; } ;
struct rpcrdma_xprt {TYPE_3__ rx_buf; TYPE_2__ rx_ep; int rx_xprt; } ;
struct TYPE_4__ {int rq_xid; } ;
struct rpcrdma_req {TYPE_1__ rl_slot; int rl_registered; int rl_free_mrs; } ;
struct rpcrdma_mr_seg {int dummy; } ;
struct rpcrdma_mr {struct rpcrdma_req* mr_req; } ;


 int EAGAIN ;
 int ENODEV ;
 struct rpcrdma_mr_seg* ERR_PTR (int ) ;
 struct rpcrdma_mr_seg* frwr_map (struct rpcrdma_xprt*,struct rpcrdma_mr_seg*,int,int,int ,struct rpcrdma_mr*) ;
 struct rpcrdma_mr* rpcrdma_mr_get (struct rpcrdma_xprt*) ;
 struct rpcrdma_mr* rpcrdma_mr_pop (int *) ;
 int rpcrdma_mr_push (struct rpcrdma_mr*,int *) ;
 int schedule_work (int *) ;
 int trace_xprtrdma_mr_get (struct rpcrdma_req*) ;
 int trace_xprtrdma_nomrs (struct rpcrdma_req*) ;
 int xprt_wait_for_buffer_space (int *) ;

__attribute__((used)) static struct rpcrdma_mr_seg *rpcrdma_mr_prepare(struct rpcrdma_xprt *r_xprt,
       struct rpcrdma_req *req,
       struct rpcrdma_mr_seg *seg,
       int nsegs, bool writing,
       struct rpcrdma_mr **mr)
{
 *mr = rpcrdma_mr_pop(&req->rl_free_mrs);
 if (!*mr) {
  *mr = rpcrdma_mr_get(r_xprt);
  if (!*mr)
   goto out_getmr_err;
  trace_xprtrdma_mr_get(req);
  (*mr)->mr_req = req;
 }

 rpcrdma_mr_push(*mr, &req->rl_registered);
 return frwr_map(r_xprt, seg, nsegs, writing, req->rl_slot.rq_xid, *mr);

out_getmr_err:
 trace_xprtrdma_nomrs(req);
 xprt_wait_for_buffer_space(&r_xprt->rx_xprt);
 if (r_xprt->rx_ep.rep_connected != -ENODEV)
  schedule_work(&r_xprt->rx_buf.rb_refresh_worker);
 return ERR_PTR(-EAGAIN);
}

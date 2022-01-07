
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int bc_pa_lock; int bc_slot_count; int bc_alloc_count; int bc_pa_list; scalar_t__ connect_cookie; } ;
struct rpc_rqst {int rq_bc_pa_list; int rq_bc_pa_state; scalar_t__ rq_connect_cookie; struct rpc_xprt* rq_xprt; } ;


 int RPC_BC_PA_IN_USE ;
 int atomic_inc (int *) ;
 int clear_bit (int ,int *) ;
 int dprintk (char*,struct rpc_rqst*) ;
 int list_add_tail (int *,int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xprt_free_allocation (struct rpc_rqst*) ;
 scalar_t__ xprt_need_to_requeue (struct rpc_xprt*) ;
 int xprt_put (struct rpc_xprt*) ;

void xprt_free_bc_rqst(struct rpc_rqst *req)
{
 struct rpc_xprt *xprt = req->rq_xprt;

 dprintk("RPC:       free backchannel req=%p\n", req);

 req->rq_connect_cookie = xprt->connect_cookie - 1;
 smp_mb__before_atomic();
 clear_bit(RPC_BC_PA_IN_USE, &req->rq_bc_pa_state);
 smp_mb__after_atomic();





 spin_lock_bh(&xprt->bc_pa_lock);
 if (xprt_need_to_requeue(xprt)) {
  list_add_tail(&req->rq_bc_pa_list, &xprt->bc_pa_list);
  xprt->bc_alloc_count++;
  atomic_inc(&xprt->bc_slot_count);
  req = ((void*)0);
 }
 spin_unlock_bh(&xprt->bc_pa_lock);
 if (req != ((void*)0)) {






  dprintk("RPC:       Last session removed req=%p\n", req);
  xprt_free_allocation(req);
 }
 xprt_put(xprt);
}

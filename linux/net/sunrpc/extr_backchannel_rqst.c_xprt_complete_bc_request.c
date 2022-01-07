
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct svc_serv {int sv_cb_lock; int sv_cb_waitq; int sv_cb_list; } ;
struct rpc_xprt {int bc_pa_lock; int bc_alloc_count; struct svc_serv* bc_serv; } ;
struct TYPE_2__ {int len; } ;
struct rpc_rqst {int rq_bc_list; int rq_bc_pa_state; TYPE_1__ rq_private_buf; int rq_bc_pa_list; struct rpc_xprt* rq_xprt; } ;


 int RPC_BC_PA_IN_USE ;
 int dprintk (char*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;
 int xprt_get (struct rpc_xprt*) ;

void xprt_complete_bc_request(struct rpc_rqst *req, uint32_t copied)
{
 struct rpc_xprt *xprt = req->rq_xprt;
 struct svc_serv *bc_serv = xprt->bc_serv;

 spin_lock(&xprt->bc_pa_lock);
 list_del(&req->rq_bc_pa_list);
 xprt->bc_alloc_count--;
 spin_unlock(&xprt->bc_pa_lock);

 req->rq_private_buf.len = copied;
 set_bit(RPC_BC_PA_IN_USE, &req->rq_bc_pa_state);

 dprintk("RPC:       add callback request to list\n");
 xprt_get(xprt);
 spin_lock(&bc_serv->sv_cb_lock);
 list_add(&req->rq_bc_list, &bc_serv->sv_cb_list);
 wake_up(&bc_serv->sv_cb_waitq);
 spin_unlock(&bc_serv->sv_cb_lock);
}

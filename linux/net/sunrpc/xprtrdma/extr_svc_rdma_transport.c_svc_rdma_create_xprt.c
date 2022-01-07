
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xpt_flags; } ;
struct svcxprt_rdma {TYPE_1__ sc_xprt; int sc_rw_ctxt_lock; int sc_send_lock; int sc_rq_dto_lock; int sc_lock; int sc_send_wait; int sc_rw_ctxts; int sc_recv_ctxts; int sc_send_ctxts; int sc_read_complete_q; int sc_rq_dto_q; int sc_accept_q; } ;
struct svc_serv {int dummy; } ;
struct net {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int XPT_CONG_CTRL ;
 int dprintk (char*) ;
 int init_llist_head (int *) ;
 int init_waitqueue_head (int *) ;
 struct svcxprt_rdma* kzalloc (int,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;
 int svc_rdma_class ;
 int svc_xprt_init (struct net*,int *,TYPE_1__*,struct svc_serv*) ;

__attribute__((used)) static struct svcxprt_rdma *svc_rdma_create_xprt(struct svc_serv *serv,
       struct net *net)
{
 struct svcxprt_rdma *cma_xprt = kzalloc(sizeof *cma_xprt, GFP_KERNEL);

 if (!cma_xprt) {
  dprintk("svcrdma: failed to create new transport\n");
  return ((void*)0);
 }
 svc_xprt_init(net, &svc_rdma_class, &cma_xprt->sc_xprt, serv);
 INIT_LIST_HEAD(&cma_xprt->sc_accept_q);
 INIT_LIST_HEAD(&cma_xprt->sc_rq_dto_q);
 INIT_LIST_HEAD(&cma_xprt->sc_read_complete_q);
 INIT_LIST_HEAD(&cma_xprt->sc_send_ctxts);
 init_llist_head(&cma_xprt->sc_recv_ctxts);
 INIT_LIST_HEAD(&cma_xprt->sc_rw_ctxts);
 init_waitqueue_head(&cma_xprt->sc_send_wait);

 spin_lock_init(&cma_xprt->sc_lock);
 spin_lock_init(&cma_xprt->sc_rq_dto_lock);
 spin_lock_init(&cma_xprt->sc_send_lock);
 spin_lock_init(&cma_xprt->sc_rw_ctxt_lock);







 set_bit(XPT_CONG_CTRL, &cma_xprt->sc_xprt.xpt_flags);

 return cma_xprt;
}

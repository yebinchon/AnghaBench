
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpcrdma_ia {TYPE_2__* ri_id; } ;
struct TYPE_3__ {scalar_t__ send_cq; scalar_t__ recv_cq; } ;
struct rpcrdma_ep {TYPE_1__ rep_attr; } ;
struct rpcrdma_xprt {struct rpcrdma_ia rx_ia; struct rpcrdma_ep rx_ep; } ;
struct TYPE_4__ {int * qp; } ;


 int ib_free_cq (scalar_t__) ;
 int rdma_destroy_qp (TYPE_2__*) ;
 int rpcrdma_ep_disconnect (struct rpcrdma_ep*,struct rpcrdma_ia*) ;

void rpcrdma_ep_destroy(struct rpcrdma_xprt *r_xprt)
{
 struct rpcrdma_ep *ep = &r_xprt->rx_ep;
 struct rpcrdma_ia *ia = &r_xprt->rx_ia;

 if (ia->ri_id && ia->ri_id->qp) {
  rpcrdma_ep_disconnect(ep, ia);
  rdma_destroy_qp(ia->ri_id);
  ia->ri_id->qp = ((void*)0);
 }

 if (ep->rep_attr.recv_cq)
  ib_free_cq(ep->rep_attr.recv_cq);
 if (ep->rep_attr.send_cq)
  ib_free_cq(ep->rep_attr.send_cq);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpcrdma_ia {TYPE_1__* ri_id; } ;
struct rpcrdma_xprt {struct rpcrdma_ia rx_ia; } ;
struct TYPE_2__ {int qp; } ;


 int ib_drain_rq (int ) ;
 int ib_drain_sq (int ) ;

__attribute__((used)) static void rpcrdma_xprt_drain(struct rpcrdma_xprt *r_xprt)
{
 struct rpcrdma_ia *ia = &r_xprt->rx_ia;




 ib_drain_rq(ia->ri_id->qp);




 ib_drain_sq(ia->ri_id->qp);
}

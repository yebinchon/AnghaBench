
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpcrdma_rep {TYPE_1__* rr_rxprt; } ;
struct TYPE_2__ {int rx_buf; } ;


 int rpcrdma_rep_put (int *,struct rpcrdma_rep*) ;

void rpcrdma_recv_buffer_put(struct rpcrdma_rep *rep)
{
 rpcrdma_rep_put(&rep->rr_rxprt->rx_buf, rep);
}

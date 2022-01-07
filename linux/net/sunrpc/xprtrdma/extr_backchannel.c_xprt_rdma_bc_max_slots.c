
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int dummy; } ;


 int RPCRDMA_BACKWARD_WRS ;

unsigned int xprt_rdma_bc_max_slots(struct rpc_xprt *xprt)
{
 return RPCRDMA_BACKWARD_WRS >> 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* ri_id; } ;
struct rpcrdma_xprt {TYPE_3__ rx_ia; } ;
struct rpcrdma_mr {scalar_t__ mr_dir; TYPE_1__* mr_req; int mr_nents; int mr_sg; struct rpcrdma_xprt* mr_xprt; } ;
struct TYPE_5__ {int device; } ;
struct TYPE_4__ {int rl_free_mrs; } ;


 scalar_t__ DMA_NONE ;
 int ib_dma_unmap_sg (int ,int ,int ,scalar_t__) ;
 int rpcrdma_mr_push (struct rpcrdma_mr*,int *) ;
 int trace_xprtrdma_mr_unmap (struct rpcrdma_mr*) ;

void rpcrdma_mr_put(struct rpcrdma_mr *mr)
{
 struct rpcrdma_xprt *r_xprt = mr->mr_xprt;

 if (mr->mr_dir != DMA_NONE) {
  trace_xprtrdma_mr_unmap(mr);
  ib_dma_unmap_sg(r_xprt->rx_ia.ri_id->device,
    mr->mr_sg, mr->mr_nents, mr->mr_dir);
  mr->mr_dir = DMA_NONE;
 }

 rpcrdma_mr_push(mr, &mr->mr_req->rl_free_mrs);
}

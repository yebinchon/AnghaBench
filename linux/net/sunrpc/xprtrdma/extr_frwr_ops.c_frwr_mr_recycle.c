
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rb_lock; } ;
struct TYPE_5__ {int mrs_recycled; } ;
struct TYPE_8__ {TYPE_3__* ri_id; } ;
struct rpcrdma_xprt {TYPE_2__ rx_buf; TYPE_1__ rx_stats; TYPE_4__ rx_ia; } ;
struct rpcrdma_mr {scalar_t__ mr_dir; int mr_all; int mr_nents; int mr_sg; } ;
struct TYPE_7__ {int device; } ;


 scalar_t__ DMA_NONE ;
 int frwr_release_mr (struct rpcrdma_mr*) ;
 int ib_dma_unmap_sg (int ,int ,int ,scalar_t__) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_xprtrdma_mr_recycle (struct rpcrdma_mr*) ;
 int trace_xprtrdma_mr_unmap (struct rpcrdma_mr*) ;

__attribute__((used)) static void frwr_mr_recycle(struct rpcrdma_xprt *r_xprt, struct rpcrdma_mr *mr)
{
 trace_xprtrdma_mr_recycle(mr);

 if (mr->mr_dir != DMA_NONE) {
  trace_xprtrdma_mr_unmap(mr);
  ib_dma_unmap_sg(r_xprt->rx_ia.ri_id->device,
    mr->mr_sg, mr->mr_nents, mr->mr_dir);
  mr->mr_dir = DMA_NONE;
 }

 spin_lock(&r_xprt->rx_buf.rb_lock);
 list_del(&mr->mr_all);
 r_xprt->rx_stats.mrs_recycled++;
 spin_unlock(&r_xprt->rx_buf.rb_lock);

 frwr_release_mr(mr);
}

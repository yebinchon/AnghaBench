
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_regbuf {int * rg_device; int rg_direction; } ;


 int ib_dma_unmap_single (int *,int ,int ,int ) ;
 int rdmab_addr (struct rpcrdma_regbuf*) ;
 int rdmab_length (struct rpcrdma_regbuf*) ;
 int rpcrdma_regbuf_is_mapped (struct rpcrdma_regbuf*) ;

__attribute__((used)) static void rpcrdma_regbuf_dma_unmap(struct rpcrdma_regbuf *rb)
{
 if (!rb)
  return;

 if (!rpcrdma_regbuf_is_mapped(rb))
  return;

 ib_dma_unmap_single(rb->rg_device, rdmab_addr(rb), rdmab_length(rb),
       rb->rg_direction);
 rb->rg_device = ((void*)0);
}

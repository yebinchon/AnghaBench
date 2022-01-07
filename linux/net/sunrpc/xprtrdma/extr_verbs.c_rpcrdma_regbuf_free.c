
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_regbuf {struct rpcrdma_regbuf* rg_data; } ;


 int kfree (struct rpcrdma_regbuf*) ;
 int rpcrdma_regbuf_dma_unmap (struct rpcrdma_regbuf*) ;

__attribute__((used)) static void rpcrdma_regbuf_free(struct rpcrdma_regbuf *rb)
{
 rpcrdma_regbuf_dma_unmap(rb);
 if (rb)
  kfree(rb->rg_data);
 kfree(rb);
}

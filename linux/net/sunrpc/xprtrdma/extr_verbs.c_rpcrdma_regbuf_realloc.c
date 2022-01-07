
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t length; } ;
struct rpcrdma_regbuf {TYPE_1__ rg_iov; void* rg_data; } ;
typedef int gfp_t ;


 int kfree (void*) ;
 void* kmalloc (size_t,int ) ;
 int rpcrdma_regbuf_dma_unmap (struct rpcrdma_regbuf*) ;

bool rpcrdma_regbuf_realloc(struct rpcrdma_regbuf *rb, size_t size, gfp_t flags)
{
 void *buf;

 buf = kmalloc(size, flags);
 if (!buf)
  return 0;

 rpcrdma_regbuf_dma_unmap(rb);
 kfree(rb->rg_data);

 rb->rg_data = buf;
 rb->rg_iov.length = size;
 return 1;
}

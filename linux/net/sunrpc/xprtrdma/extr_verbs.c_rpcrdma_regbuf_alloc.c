
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t length; } ;
struct rpcrdma_regbuf {int rg_direction; TYPE_1__ rg_iov; int * rg_device; void* rg_data; } ;
typedef int gfp_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int kfree (struct rpcrdma_regbuf*) ;
 void* kmalloc (size_t,int ) ;

__attribute__((used)) static struct rpcrdma_regbuf *
rpcrdma_regbuf_alloc(size_t size, enum dma_data_direction direction,
       gfp_t flags)
{
 struct rpcrdma_regbuf *rb;

 rb = kmalloc(sizeof(*rb), flags);
 if (!rb)
  return ((void*)0);
 rb->rg_data = kmalloc(size, flags);
 if (!rb->rg_data) {
  kfree(rb);
  return ((void*)0);
 }

 rb->rg_device = ((void*)0);
 rb->rg_direction = direction;
 rb->rg_iov.length = size;
 return rb;
}

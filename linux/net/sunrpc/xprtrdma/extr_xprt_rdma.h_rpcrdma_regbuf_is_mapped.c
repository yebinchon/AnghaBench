
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_regbuf {int * rg_device; } ;



__attribute__((used)) static inline bool rpcrdma_regbuf_is_mapped(struct rpcrdma_regbuf *rb)
{
 return rb->rg_device != ((void*)0);
}

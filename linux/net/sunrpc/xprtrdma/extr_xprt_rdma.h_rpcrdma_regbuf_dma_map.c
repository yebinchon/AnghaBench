
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_xprt {int dummy; } ;
struct rpcrdma_regbuf {int dummy; } ;


 int __rpcrdma_regbuf_dma_map (struct rpcrdma_xprt*,struct rpcrdma_regbuf*) ;
 scalar_t__ likely (int ) ;
 int rpcrdma_regbuf_is_mapped (struct rpcrdma_regbuf*) ;

__attribute__((used)) static inline bool rpcrdma_regbuf_dma_map(struct rpcrdma_xprt *r_xprt,
       struct rpcrdma_regbuf *rb)
{
 if (likely(rpcrdma_regbuf_is_mapped(rb)))
  return 1;
 return __rpcrdma_regbuf_dma_map(r_xprt, rb);
}

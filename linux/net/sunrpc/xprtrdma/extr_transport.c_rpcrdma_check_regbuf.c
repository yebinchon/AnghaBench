
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t hardway_register_count; } ;
struct rpcrdma_xprt {TYPE_1__ rx_stats; } ;
struct rpcrdma_regbuf {int dummy; } ;
typedef int gfp_t ;


 size_t rdmab_length (struct rpcrdma_regbuf*) ;
 int rpcrdma_regbuf_realloc (struct rpcrdma_regbuf*,size_t,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool rpcrdma_check_regbuf(struct rpcrdma_xprt *r_xprt,
     struct rpcrdma_regbuf *rb, size_t size,
     gfp_t flags)
{
 if (unlikely(rdmab_length(rb) < size)) {
  if (!rpcrdma_regbuf_realloc(rb, size, flags))
   return 0;
  r_xprt->rx_stats.hardway_register_count += size;
 }
 return 1;
}

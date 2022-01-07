
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpcrdma_ep {scalar_t__ rep_inline_recv; scalar_t__ rep_max_inline_recv; scalar_t__ rep_inline_send; scalar_t__ rep_max_inline_send; } ;
struct TYPE_2__ {unsigned int ri_max_segs; } ;
struct rpcrdma_xprt {struct rpcrdma_ep rx_ep; TYPE_1__ rx_ia; } ;


 scalar_t__ rpcrdma_max_call_header_size (unsigned int) ;
 scalar_t__ rpcrdma_max_reply_header_size (unsigned int) ;

void rpcrdma_set_max_header_sizes(struct rpcrdma_xprt *r_xprt)
{
 unsigned int maxsegs = r_xprt->rx_ia.ri_max_segs;
 struct rpcrdma_ep *ep = &r_xprt->rx_ep;

 ep->rep_max_inline_send =
  ep->rep_inline_send - rpcrdma_max_call_header_size(maxsegs);
 ep->rep_max_inline_recv =
  ep->rep_inline_recv - rpcrdma_max_reply_header_size(maxsegs);
}

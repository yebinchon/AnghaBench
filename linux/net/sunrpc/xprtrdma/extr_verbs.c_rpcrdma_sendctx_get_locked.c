
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int empty_sendctx_q; } ;
struct rpcrdma_buffer {unsigned long rb_sc_head; struct rpcrdma_sendctx** rb_sc_ctxs; int rb_sc_tail; } ;
struct rpcrdma_xprt {TYPE_1__ rx_stats; int rx_xprt; struct rpcrdma_buffer rx_buf; } ;
struct rpcrdma_sendctx {int dummy; } ;


 unsigned long READ_ONCE (int ) ;
 unsigned long rpcrdma_sendctx_next (struct rpcrdma_buffer*,unsigned long) ;
 int xprt_wait_for_buffer_space (int *) ;

struct rpcrdma_sendctx *rpcrdma_sendctx_get_locked(struct rpcrdma_xprt *r_xprt)
{
 struct rpcrdma_buffer *buf = &r_xprt->rx_buf;
 struct rpcrdma_sendctx *sc;
 unsigned long next_head;

 next_head = rpcrdma_sendctx_next(buf, buf->rb_sc_head);

 if (next_head == READ_ONCE(buf->rb_sc_tail))
  goto out_emptyq;


 sc = buf->rb_sc_ctxs[next_head];




 buf->rb_sc_head = next_head;

 return sc;

out_emptyq:




 xprt_wait_for_buffer_space(&r_xprt->rx_xprt);
 r_xprt->rx_stats.empty_sendctx_q++;
 return ((void*)0);
}

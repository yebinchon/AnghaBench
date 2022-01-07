
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpcrdma_sendctx {TYPE_1__* sc_xprt; } ;
struct rpcrdma_buffer {unsigned long rb_sc_tail; struct rpcrdma_sendctx** rb_sc_ctxs; } ;
struct TYPE_2__ {int rx_xprt; struct rpcrdma_buffer rx_buf; } ;


 unsigned long rpcrdma_sendctx_next (struct rpcrdma_buffer*,unsigned long) ;
 int rpcrdma_sendctx_unmap (struct rpcrdma_sendctx*) ;
 int smp_store_release (unsigned long*,unsigned long) ;
 int xprt_write_space (int *) ;

__attribute__((used)) static void
rpcrdma_sendctx_put_locked(struct rpcrdma_sendctx *sc)
{
 struct rpcrdma_buffer *buf = &sc->sc_xprt->rx_buf;
 unsigned long next_tail;




 next_tail = buf->rb_sc_tail;
 do {
  next_tail = rpcrdma_sendctx_next(buf, next_tail);


  rpcrdma_sendctx_unmap(buf->rb_sc_ctxs[next_tail]);

 } while (buf->rb_sc_ctxs[next_tail] != sc);


 smp_store_release(&buf->rb_sc_tail, next_tail);

 xprt_write_space(&sc->sc_xprt->rx_xprt);
}

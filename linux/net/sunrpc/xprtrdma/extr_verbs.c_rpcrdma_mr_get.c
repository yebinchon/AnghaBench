
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_buffer {int rb_lock; int rb_mrs; } ;
struct rpcrdma_xprt {struct rpcrdma_buffer rx_buf; } ;
struct rpcrdma_mr {int dummy; } ;


 struct rpcrdma_mr* rpcrdma_mr_pop (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct rpcrdma_mr *
rpcrdma_mr_get(struct rpcrdma_xprt *r_xprt)
{
 struct rpcrdma_buffer *buf = &r_xprt->rx_buf;
 struct rpcrdma_mr *mr;

 spin_lock(&buf->rb_lock);
 mr = rpcrdma_mr_pop(&buf->rb_mrs);
 spin_unlock(&buf->rb_lock);
 return mr;
}

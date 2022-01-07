
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_buffer {int rb_lock; int rb_mrs; } ;
struct rpcrdma_xprt {struct rpcrdma_buffer rx_buf; } ;
struct rpcrdma_mr {int * mr_req; struct rpcrdma_xprt* mr_xprt; } ;


 int rpcrdma_mr_push (struct rpcrdma_mr*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void rpcrdma_mr_free(struct rpcrdma_mr *mr)
{
 struct rpcrdma_xprt *r_xprt = mr->mr_xprt;
 struct rpcrdma_buffer *buf = &r_xprt->rx_buf;

 mr->mr_req = ((void*)0);
 spin_lock(&buf->rb_lock);
 rpcrdma_mr_push(mr, &buf->rb_mrs);
 spin_unlock(&buf->rb_lock);
}

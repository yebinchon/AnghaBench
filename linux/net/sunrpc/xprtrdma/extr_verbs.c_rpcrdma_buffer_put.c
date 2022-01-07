
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_req {int rl_list; int * rl_reply; } ;
struct rpcrdma_buffer {int rb_lock; int rb_send_bufs; } ;


 int list_add (int *,int *) ;
 int rpcrdma_rep_put (struct rpcrdma_buffer*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rpcrdma_buffer_put(struct rpcrdma_buffer *buffers, struct rpcrdma_req *req)
{
 if (req->rl_reply)
  rpcrdma_rep_put(buffers, req->rl_reply);
 req->rl_reply = ((void*)0);

 spin_lock(&buffers->rb_lock);
 list_add(&req->rl_list, &buffers->rb_send_bufs);
 spin_unlock(&buffers->rb_lock);
}

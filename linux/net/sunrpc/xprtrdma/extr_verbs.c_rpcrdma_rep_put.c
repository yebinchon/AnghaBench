
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_rep {int rr_node; int rr_temp; } ;
struct rpcrdma_buffer {int rb_free_reps; } ;


 int llist_add (int *,int *) ;
 int rpcrdma_rep_destroy (struct rpcrdma_rep*) ;

__attribute__((used)) static void rpcrdma_rep_put(struct rpcrdma_buffer *buf,
       struct rpcrdma_rep *rep)
{
 if (!rep->rr_temp)
  llist_add(&rep->rr_node, &buf->rb_free_reps);
 else
  rpcrdma_rep_destroy(rep);
}

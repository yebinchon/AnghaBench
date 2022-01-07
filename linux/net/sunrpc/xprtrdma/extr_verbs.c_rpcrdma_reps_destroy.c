
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_rep {int dummy; } ;
struct rpcrdma_buffer {int dummy; } ;


 int rpcrdma_rep_destroy (struct rpcrdma_rep*) ;
 struct rpcrdma_rep* rpcrdma_rep_get_locked (struct rpcrdma_buffer*) ;

__attribute__((used)) static void rpcrdma_reps_destroy(struct rpcrdma_buffer *buf)
{
 struct rpcrdma_rep *rep;

 while ((rep = rpcrdma_rep_get_locked(buf)) != ((void*)0))
  rpcrdma_rep_destroy(rep);
}

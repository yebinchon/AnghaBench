
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_req {int rl_registered; } ;
struct rpcrdma_mr {int dummy; } ;


 struct rpcrdma_mr* rpcrdma_mr_pop (int *) ;
 int rpcrdma_mr_put (struct rpcrdma_mr*) ;

void frwr_reset(struct rpcrdma_req *req)
{
 struct rpcrdma_mr *mr;

 while ((mr = rpcrdma_mr_pop(&req->rl_registered)))
  rpcrdma_mr_put(mr);
}

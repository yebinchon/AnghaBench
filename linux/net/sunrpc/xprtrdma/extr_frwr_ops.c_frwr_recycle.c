
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_req {int rl_registered; } ;
struct rpcrdma_mr {int mr_xprt; } ;


 int frwr_mr_recycle (int ,struct rpcrdma_mr*) ;
 struct rpcrdma_mr* rpcrdma_mr_pop (int *) ;

void frwr_recycle(struct rpcrdma_req *req)
{
 struct rpcrdma_mr *mr;

 while ((mr = rpcrdma_mr_pop(&req->rl_registered)))
  frwr_mr_recycle(mr->mr_xprt, mr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fr_mr; } ;
struct rpcrdma_mr {struct rpcrdma_mr* mr_sg; TYPE_1__ frwr; } ;


 int ib_dereg_mr (int ) ;
 int kfree (struct rpcrdma_mr*) ;
 int trace_xprtrdma_frwr_dereg (struct rpcrdma_mr*,int) ;

void frwr_release_mr(struct rpcrdma_mr *mr)
{
 int rc;

 rc = ib_dereg_mr(mr->frwr.fr_mr);
 if (rc)
  trace_xprtrdma_frwr_dereg(mr, rc);
 kfree(mr->mr_sg);
 kfree(mr);
}

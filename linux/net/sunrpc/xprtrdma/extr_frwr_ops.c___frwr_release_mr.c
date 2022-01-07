
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_mr {int dummy; } ;
struct ib_wc {scalar_t__ status; } ;


 scalar_t__ IB_WC_SUCCESS ;
 int rpcrdma_mr_put (struct rpcrdma_mr*) ;
 int rpcrdma_mr_recycle (struct rpcrdma_mr*) ;

__attribute__((used)) static void __frwr_release_mr(struct ib_wc *wc, struct rpcrdma_mr *mr)
{
 if (wc->status != IB_WC_SUCCESS)
  rpcrdma_mr_recycle(mr);
 else
  rpcrdma_mr_put(mr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_mr {int mr_recycle; } ;


 int schedule_work (int *) ;

__attribute__((used)) static inline void
rpcrdma_mr_recycle(struct rpcrdma_mr *mr)
{
 schedule_work(&mr->mr_recycle);
}

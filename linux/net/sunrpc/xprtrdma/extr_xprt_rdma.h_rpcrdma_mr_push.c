
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_mr {int mr_list; } ;
struct list_head {int dummy; } ;


 int list_add (int *,struct list_head*) ;

__attribute__((used)) static inline void
rpcrdma_mr_push(struct rpcrdma_mr *mr, struct list_head *list)
{
 list_add(&mr->mr_list, list);
}

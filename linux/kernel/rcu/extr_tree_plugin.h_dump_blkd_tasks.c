
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_node {int blkd_tasks; } ;


 int WARN_ON_ONCE (int) ;
 int list_empty (int *) ;

__attribute__((used)) static void
dump_blkd_tasks(struct rcu_node *rnp, int ncheck)
{
 WARN_ON_ONCE(!list_empty(&rnp->blkd_tasks));
}

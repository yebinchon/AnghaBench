
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_node {int qsmaskinitnext; } ;


 unsigned long READ_ONCE (int ) ;

unsigned long rcu_rnp_online_cpus(struct rcu_node *rnp)
{
 return READ_ONCE(rnp->qsmaskinitnext);
}

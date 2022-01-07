
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_node {int qsmask; } ;


 int WARN_ON_ONCE (int ) ;

__attribute__((used)) static void rcu_preempt_check_blocked_tasks(struct rcu_node *rnp)
{
 WARN_ON_ONCE(rnp->qsmask);
}

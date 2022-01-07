
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {int dummy; } ;


 int call_srcu (int *,struct rcu_head*,int ) ;
 int srcu_free_old_probes ;
 int tracepoint_srcu ;

__attribute__((used)) static void rcu_free_old_probes(struct rcu_head *head)
{
 call_srcu(&tracepoint_srcu, head, srcu_free_old_probes);
}

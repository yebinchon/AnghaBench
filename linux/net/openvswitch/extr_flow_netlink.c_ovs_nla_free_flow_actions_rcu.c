
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_actions {int rcu; } ;


 int __ovs_nla_free_flow_actions ;
 int call_rcu (int *,int ) ;

void ovs_nla_free_flow_actions_rcu(struct sw_flow_actions *sf_acts)
{
 call_rcu(&sf_acts->rcu, __ovs_nla_free_flow_actions);
}

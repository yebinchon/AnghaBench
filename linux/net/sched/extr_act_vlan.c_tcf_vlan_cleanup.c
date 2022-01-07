
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_vlan_params {int dummy; } ;
struct tcf_vlan {int vlan_p; } ;
struct tc_action {int dummy; } ;


 int kfree_rcu (struct tcf_vlan_params*,int ) ;
 int rcu ;
 struct tcf_vlan_params* rcu_dereference_protected (int ,int) ;
 struct tcf_vlan* to_vlan (struct tc_action*) ;

__attribute__((used)) static void tcf_vlan_cleanup(struct tc_action *a)
{
 struct tcf_vlan *v = to_vlan(a);
 struct tcf_vlan_params *p;

 p = rcu_dereference_protected(v->vlan_p, 1);
 if (p)
  kfree_rcu(p, rcu);
}

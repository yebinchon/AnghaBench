
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_vlan {int vlist; } ;


 int list_del_rcu (int *) ;

__attribute__((used)) static void __vlan_del_list(struct net_bridge_vlan *v)
{
 list_del_rcu(&v->vlist);
}

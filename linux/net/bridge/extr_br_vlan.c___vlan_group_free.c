
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_vlan_group {int vlan_hash; int vlan_list; } ;


 int WARN_ON (int) ;
 int kfree (struct net_bridge_vlan_group*) ;
 int list_empty (int *) ;
 int rhashtable_destroy (int *) ;
 int vlan_tunnel_deinit (struct net_bridge_vlan_group*) ;

__attribute__((used)) static void __vlan_group_free(struct net_bridge_vlan_group *vg)
{
 WARN_ON(!list_empty(&vg->vlan_list));
 rhashtable_destroy(&vg->vlan_hash);
 vlan_tunnel_deinit(vg);
 kfree(vg);
}

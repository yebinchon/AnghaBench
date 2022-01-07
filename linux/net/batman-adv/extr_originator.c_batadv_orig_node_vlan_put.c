
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_orig_node_vlan {int refcount; } ;


 int batadv_orig_node_vlan_release ;
 int kref_put (int *,int ) ;

void batadv_orig_node_vlan_put(struct batadv_orig_node_vlan *orig_vlan)
{
 kref_put(&orig_vlan->refcount, batadv_orig_node_vlan_release);
}

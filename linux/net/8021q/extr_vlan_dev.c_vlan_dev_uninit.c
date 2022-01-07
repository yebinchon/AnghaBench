
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_priority_tci_mapping {struct vlan_priority_tci_mapping* next; } ;
struct vlan_dev_priv {struct vlan_priority_tci_mapping** egress_priority_map; } ;
struct net_device {int dummy; } ;


 int ARRAY_SIZE (struct vlan_priority_tci_mapping**) ;
 int kfree (struct vlan_priority_tci_mapping*) ;
 struct vlan_dev_priv* vlan_dev_priv (struct net_device*) ;

__attribute__((used)) static void vlan_dev_uninit(struct net_device *dev)
{
 struct vlan_priority_tci_mapping *pm;
 struct vlan_dev_priv *vlan = vlan_dev_priv(dev);
 int i;

 for (i = 0; i < ARRAY_SIZE(vlan->egress_priority_map); i++) {
  while ((pm = vlan->egress_priority_map[i]) != ((void*)0)) {
   vlan->egress_priority_map[i] = pm->next;
   kfree(pm);
  }
 }
}

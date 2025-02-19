
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct vlan_dev_priv {scalar_t__* ingress_priority_map; int nr_ingress_mappings; } ;
struct net_device {int dummy; } ;


 struct vlan_dev_priv* vlan_dev_priv (struct net_device const*) ;

void vlan_dev_set_ingress_priority(const struct net_device *dev,
       u32 skb_prio, u16 vlan_prio)
{
 struct vlan_dev_priv *vlan = vlan_dev_priv(dev);

 if (vlan->ingress_priority_map[vlan_prio & 0x7] && !skb_prio)
  vlan->nr_ingress_mappings--;
 else if (!vlan->ingress_priority_map[vlan_prio & 0x7] && skb_prio)
  vlan->nr_ingress_mappings++;

 vlan->ingress_priority_map[vlan_prio & 0x7] = skb_prio;
}

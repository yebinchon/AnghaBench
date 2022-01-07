
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vlan_info {int grp; } ;
struct net_device {int vlan_info; } ;
typedef int __be16 ;


 struct net_device* netdev_master_upper_dev_get_rcu (struct net_device*) ;
 struct vlan_info* rcu_dereference (int ) ;
 struct net_device* vlan_group_get_device (int *,int ,int ) ;

struct net_device *__vlan_find_dev_deep_rcu(struct net_device *dev,
     __be16 vlan_proto, u16 vlan_id)
{
 struct vlan_info *vlan_info = rcu_dereference(dev->vlan_info);

 if (vlan_info) {
  return vlan_group_get_device(&vlan_info->grp,
          vlan_proto, vlan_id);
 } else {





  struct net_device *upper_dev;

  upper_dev = netdev_master_upper_dev_get_rcu(dev);
  if (upper_dev)
   return __vlan_find_dev_deep_rcu(upper_dev,
          vlan_proto, vlan_id);
 }

 return ((void*)0);
}

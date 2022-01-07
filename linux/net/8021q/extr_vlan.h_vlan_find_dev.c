
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vlan_info {int grp; } ;
struct net_device {int vlan_info; } ;
typedef int __be16 ;


 struct vlan_info* rcu_dereference_rtnl (int ) ;
 struct net_device* vlan_group_get_device (int *,int ,int ) ;

__attribute__((used)) static inline struct net_device *vlan_find_dev(struct net_device *real_dev,
            __be16 vlan_proto, u16 vlan_id)
{
 struct vlan_info *vlan_info = rcu_dereference_rtnl(real_dev->vlan_info);

 if (vlan_info)
  return vlan_group_get_device(&vlan_info->grp,
          vlan_proto, vlan_id);

 return ((void*)0);
}

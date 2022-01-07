
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nr_vlan_devs; } ;
struct vlan_info {TYPE_1__ grp; } ;
struct net_device {int vlan_info; } ;


 int ASSERT_RTNL () ;
 struct vlan_info* rtnl_dereference (int ) ;

bool vlan_uses_dev(const struct net_device *dev)
{
 struct vlan_info *vlan_info;

 ASSERT_RTNL();

 vlan_info = rtnl_dereference(dev->vlan_info);
 if (!vlan_info)
  return 0;
 return vlan_info->grp.nr_vlan_devs ? 1 : 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_notifier_changeupper_info {int linking; int upper_dev; } ;
struct net_device {int dummy; } ;
struct net_bridge {int default_pvid; } ;


 int BRIDGE_VLAN_INFO_BRENTRY ;
 int BRIDGE_VLAN_INFO_PVID ;
 int BRIDGE_VLAN_INFO_UNTAGGED ;
 int BROPT_VLAN_BRIDGE_BINDING ;





 int br_opt_get (struct net_bridge*,int ) ;
 int br_vlan_add (struct net_bridge*,int ,int,int*,int *) ;
 int br_vlan_delete (struct net_bridge*,int ) ;
 int br_vlan_link_state_change (struct net_device*,struct net_bridge*) ;
 int br_vlan_upper_change (struct net_device*,int ,int ) ;
 struct net_bridge* netdev_priv (struct net_device*) ;

int br_vlan_bridge_event(struct net_device *dev, unsigned long event, void *ptr)
{
 struct netdev_notifier_changeupper_info *info;
 struct net_bridge *br = netdev_priv(dev);
 bool changed;
 int ret = 0;

 switch (event) {
 case 130:
  ret = br_vlan_add(br, br->default_pvid,
      BRIDGE_VLAN_INFO_PVID |
      BRIDGE_VLAN_INFO_UNTAGGED |
      BRIDGE_VLAN_INFO_BRENTRY, &changed, ((void*)0));
  break;
 case 129:
  br_vlan_delete(br, br->default_pvid);
  break;
 case 131:
  info = ptr;
  br_vlan_upper_change(dev, info->upper_dev, info->linking);
  break;

 case 132:
 case 128:
  if (!br_opt_get(br, BROPT_VLAN_BRIDGE_BINDING))
   break;
  br_vlan_link_state_change(dev, br);
  break;
 }

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge {int dummy; } ;


 int BROPT_VLAN_BRIDGE_BINDING ;
 int br_opt_toggle (struct net_bridge*,int ,int) ;
 int br_vlan_has_upper_bind_vlan_dev (struct net_device*) ;
 int br_vlan_is_bind_vlan_dev (struct net_device*) ;
 int br_vlan_set_vlan_dev_state (struct net_bridge*,struct net_device*) ;
 struct net_bridge* netdev_priv (struct net_device*) ;

__attribute__((used)) static void br_vlan_upper_change(struct net_device *dev,
     struct net_device *upper_dev,
     bool linking)
{
 struct net_bridge *br = netdev_priv(dev);

 if (!br_vlan_is_bind_vlan_dev(upper_dev))
  return;

 if (linking) {
  br_vlan_set_vlan_dev_state(br, upper_dev);
  br_opt_toggle(br, BROPT_VLAN_BRIDGE_BINDING, 1);
 } else {
  br_opt_toggle(br, BROPT_VLAN_BRIDGE_BINDING,
         br_vlan_has_upper_bind_vlan_dev(dev));
 }
}

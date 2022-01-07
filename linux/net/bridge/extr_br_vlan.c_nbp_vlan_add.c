
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct net_bridge_vlan {struct net_bridge_port* port; int vid; } ;
struct net_bridge_port {int dev; } ;


 int ASSERT_RTNL () ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int __vlan_add (struct net_bridge_vlan*,int ,struct netlink_ext_ack*) ;
 int __vlan_add_flags (struct net_bridge_vlan*,int ) ;
 int br_switchdev_port_vlan_add (int ,int ,int ,struct netlink_ext_ack*) ;
 struct net_bridge_vlan* br_vlan_find (int ,int ) ;
 int kfree (struct net_bridge_vlan*) ;
 struct net_bridge_vlan* kzalloc (int,int ) ;
 int nbp_vlan_group (struct net_bridge_port*) ;

int nbp_vlan_add(struct net_bridge_port *port, u16 vid, u16 flags,
   bool *changed, struct netlink_ext_ack *extack)
{
 struct net_bridge_vlan *vlan;
 int ret;

 ASSERT_RTNL();

 *changed = 0;
 vlan = br_vlan_find(nbp_vlan_group(port), vid);
 if (vlan) {

  ret = br_switchdev_port_vlan_add(port->dev, vid, flags, extack);
  if (ret && ret != -EOPNOTSUPP)
   return ret;
  *changed = __vlan_add_flags(vlan, flags);

  return 0;
 }

 vlan = kzalloc(sizeof(*vlan), GFP_KERNEL);
 if (!vlan)
  return -ENOMEM;

 vlan->vid = vid;
 vlan->port = port;
 ret = __vlan_add(vlan, flags, extack);
 if (ret)
  kfree(vlan);
 else
  *changed = 1;

 return ret;
}

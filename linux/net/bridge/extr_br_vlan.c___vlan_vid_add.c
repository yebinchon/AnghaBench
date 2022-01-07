
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net_bridge_vlan {int priv_flags; int vid; } ;
struct net_bridge {int vlan_proto; } ;


 int BR_VLFLAG_ADDED_BY_SWITCHDEV ;
 int EOPNOTSUPP ;
 int br_switchdev_port_vlan_add (struct net_device*,int ,int ,struct netlink_ext_ack*) ;
 int vlan_vid_add (struct net_device*,int ,int ) ;

__attribute__((used)) static int __vlan_vid_add(struct net_device *dev, struct net_bridge *br,
     struct net_bridge_vlan *v, u16 flags,
     struct netlink_ext_ack *extack)
{
 int err;




 err = br_switchdev_port_vlan_add(dev, v->vid, flags, extack);
 if (err == -EOPNOTSUPP)
  return vlan_vid_add(dev, br->vlan_proto, v->vid);
 v->priv_flags |= BR_VLFLAG_ADDED_BY_SWITCHDEV;
 return err;
}

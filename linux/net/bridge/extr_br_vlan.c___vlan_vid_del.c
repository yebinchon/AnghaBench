
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge_vlan {int priv_flags; int vid; } ;
struct net_bridge {int vlan_proto; } ;


 int BR_VLFLAG_ADDED_BY_SWITCHDEV ;
 int EOPNOTSUPP ;
 int br_switchdev_port_vlan_del (struct net_device*,int ) ;
 int vlan_vid_del (struct net_device*,int ,int ) ;

__attribute__((used)) static int __vlan_vid_del(struct net_device *dev, struct net_bridge *br,
     const struct net_bridge_vlan *v)
{
 int err;




 err = br_switchdev_port_vlan_del(dev, v->vid);
 if (!(v->priv_flags & BR_VLFLAG_ADDED_BY_SWITCHDEV))
  vlan_vid_del(dev, br->vlan_proto, v->vid);
 return err == -EOPNOTSUPP ? 0 : err;
}

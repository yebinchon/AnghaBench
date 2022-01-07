
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int id; struct net_device* orig_dev; } ;
struct switchdev_obj_port_vlan {TYPE_1__ obj; int vid_end; int vid_begin; int flags; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;


 int SWITCHDEV_OBJ_ID_PORT_VLAN ;
 int switchdev_port_obj_add (struct net_device*,TYPE_1__*,struct netlink_ext_ack*) ;

int br_switchdev_port_vlan_add(struct net_device *dev, u16 vid, u16 flags,
          struct netlink_ext_ack *extack)
{
 struct switchdev_obj_port_vlan v = {
  .obj.orig_dev = dev,
  .obj.id = SWITCHDEV_OBJ_ID_PORT_VLAN,
  .flags = flags,
  .vid_begin = vid,
  .vid_end = vid,
 };

 return switchdev_port_obj_add(dev, &v.obj, extack);
}

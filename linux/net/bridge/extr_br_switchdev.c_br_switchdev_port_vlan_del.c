
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int id; struct net_device* orig_dev; } ;
struct switchdev_obj_port_vlan {TYPE_1__ obj; int vid_end; int vid_begin; } ;
struct net_device {int dummy; } ;


 int SWITCHDEV_OBJ_ID_PORT_VLAN ;
 int switchdev_port_obj_del (struct net_device*,TYPE_1__*) ;

int br_switchdev_port_vlan_del(struct net_device *dev, u16 vid)
{
 struct switchdev_obj_port_vlan v = {
  .obj.orig_dev = dev,
  .obj.id = SWITCHDEV_OBJ_ID_PORT_VLAN,
  .vid_begin = vid,
  .vid_end = vid,
 };

 return switchdev_port_obj_del(dev, &v.obj);
}

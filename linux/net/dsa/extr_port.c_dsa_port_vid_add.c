
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct switchdev_trans {int ph_prepare; } ;
struct TYPE_2__ {int id; } ;
struct switchdev_obj_port_vlan {int vid_end; int vid_begin; int flags; TYPE_1__ obj; } ;
struct dsa_port {int dummy; } ;


 int SWITCHDEV_OBJ_ID_PORT_VLAN ;
 int dsa_port_vlan_add (struct dsa_port*,struct switchdev_obj_port_vlan*,struct switchdev_trans*) ;

int dsa_port_vid_add(struct dsa_port *dp, u16 vid, u16 flags)
{
 struct switchdev_obj_port_vlan vlan = {
  .obj.id = SWITCHDEV_OBJ_ID_PORT_VLAN,
  .flags = flags,
  .vid_begin = vid,
  .vid_end = vid,
 };
 struct switchdev_trans trans;
 int err;

 trans.ph_prepare = 1;
 err = dsa_port_vlan_add(dp, &vlan, &trans);
 if (err)
  return err;

 trans.ph_prepare = 0;
 return dsa_port_vlan_add(dp, &vlan, &trans);
}

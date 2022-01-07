
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int id; } ;
struct switchdev_obj_port_vlan {int vid_end; int vid_begin; TYPE_1__ obj; } ;
struct dsa_port {int dummy; } ;


 int SWITCHDEV_OBJ_ID_PORT_VLAN ;
 int dsa_port_vlan_del (struct dsa_port*,struct switchdev_obj_port_vlan*) ;

int dsa_port_vid_del(struct dsa_port *dp, u16 vid)
{
 struct switchdev_obj_port_vlan vlan = {
  .obj.id = SWITCHDEV_OBJ_ID_PORT_VLAN,
  .vid_begin = vid,
  .vid_end = vid,
 };

 return dsa_port_vlan_del(dp, &vlan);
}

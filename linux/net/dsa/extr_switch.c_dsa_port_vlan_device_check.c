
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct switchdev_obj_port_vlan {int vid_begin; int vid_end; } ;
struct net_device {int dummy; } ;


 int EBUSY ;

__attribute__((used)) static int dsa_port_vlan_device_check(struct net_device *vlan_dev,
          int vlan_dev_vid,
          void *arg)
{
 struct switchdev_obj_port_vlan *vlan = arg;
 u16 vid;

 for (vid = vlan->vid_begin; vid <= vlan->vid_end; ++vid) {
  if (vid == vlan_dev_vid)
   return -EBUSY;
 }

 return 0;
}

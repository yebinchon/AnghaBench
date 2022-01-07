
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_obj_port_vlan {int dummy; } ;
struct switchdev_obj_port_mdb {int dummy; } ;
struct switchdev_obj {int id; } ;


 int BUG () ;




__attribute__((used)) static size_t switchdev_obj_size(const struct switchdev_obj *obj)
{
 switch (obj->id) {
 case 128:
  return sizeof(struct switchdev_obj_port_vlan);
 case 129:
  return sizeof(struct switchdev_obj_port_mdb);
 case 130:
  return sizeof(struct switchdev_obj_port_mdb);
 default:
  BUG();
 }
 return 0;
}

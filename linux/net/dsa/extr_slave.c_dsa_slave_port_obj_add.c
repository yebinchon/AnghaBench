
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_trans {int dummy; } ;
struct switchdev_obj {int id; struct net_device* orig_dev; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct dsa_port {struct dsa_port* cpu_dp; } ;


 int EOPNOTSUPP ;



 int SWITCHDEV_OBJ_PORT_MDB (struct switchdev_obj const*) ;
 int dsa_port_mdb_add (struct dsa_port*,int ,struct switchdev_trans*) ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int dsa_slave_vlan_add (struct net_device*,struct switchdev_obj const*,struct switchdev_trans*) ;

__attribute__((used)) static int dsa_slave_port_obj_add(struct net_device *dev,
      const struct switchdev_obj *obj,
      struct switchdev_trans *trans,
      struct netlink_ext_ack *extack)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 int err;






 switch (obj->id) {
 case 129:
  if (obj->orig_dev != dev)
   return -EOPNOTSUPP;
  err = dsa_port_mdb_add(dp, SWITCHDEV_OBJ_PORT_MDB(obj), trans);
  break;
 case 130:



  err = dsa_port_mdb_add(dp->cpu_dp, SWITCHDEV_OBJ_PORT_MDB(obj),
           trans);
  break;
 case 128:
  err = dsa_slave_vlan_add(dev, obj, trans);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 return err;
}

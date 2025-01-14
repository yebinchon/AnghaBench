
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_trans {int dummy; } ;
struct switchdev_obj_port_vlan {int flags; } ;
struct switchdev_obj {struct net_device* orig_dev; } ;
struct net_device {int dummy; } ;
struct dsa_port {struct dsa_port* cpu_dp; scalar_t__ bridge_dev; } ;


 int BRIDGE_VLAN_INFO_PVID ;
 int EOPNOTSUPP ;
 struct switchdev_obj_port_vlan* SWITCHDEV_OBJ_PORT_VLAN (struct switchdev_obj const*) ;
 int br_vlan_enabled (scalar_t__) ;
 int dsa_port_vlan_add (struct dsa_port*,struct switchdev_obj_port_vlan*,struct switchdev_trans*) ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;

__attribute__((used)) static int dsa_slave_vlan_add(struct net_device *dev,
         const struct switchdev_obj *obj,
         struct switchdev_trans *trans)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 struct switchdev_obj_port_vlan vlan;
 int err;

 if (obj->orig_dev != dev)
  return -EOPNOTSUPP;

 if (dp->bridge_dev && !br_vlan_enabled(dp->bridge_dev))
  return 0;

 vlan = *SWITCHDEV_OBJ_PORT_VLAN(obj);

 err = dsa_port_vlan_add(dp, &vlan, trans);
 if (err)
  return err;





 vlan.flags &= ~BRIDGE_VLAN_INFO_PVID;

 err = dsa_port_vlan_add(dp->cpu_dp, &vlan, trans);
 if (err)
  return err;

 return 0;
}

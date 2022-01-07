
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_obj {struct net_device* orig_dev; } ;
struct net_device {int dummy; } ;
struct dsa_port {scalar_t__ bridge_dev; } ;


 int EOPNOTSUPP ;
 int SWITCHDEV_OBJ_PORT_VLAN (struct switchdev_obj const*) ;
 int br_vlan_enabled (scalar_t__) ;
 int dsa_port_vlan_del (struct dsa_port*,int ) ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;

__attribute__((used)) static int dsa_slave_vlan_del(struct net_device *dev,
         const struct switchdev_obj *obj)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);

 if (obj->orig_dev != dev)
  return -EOPNOTSUPP;

 if (dp->bridge_dev && !br_vlan_enabled(dp->bridge_dev))
  return 0;




 return dsa_port_vlan_del(dp, SWITCHDEV_OBJ_PORT_VLAN(obj));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_trans {int ph_prepare; } ;
struct switchdev_obj {int id; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int name; } ;


 int ASSERT_RTNL () ;
 int SWITCHDEV_PORT_OBJ_ADD ;
 int WARN (int,char*,int ,int ) ;
 int switchdev_port_obj_notify (int ,struct net_device*,struct switchdev_obj const*,struct switchdev_trans*,struct netlink_ext_ack*) ;

__attribute__((used)) static int switchdev_port_obj_add_now(struct net_device *dev,
          const struct switchdev_obj *obj,
          struct netlink_ext_ack *extack)
{
 struct switchdev_trans trans;
 int err;

 ASSERT_RTNL();
 trans.ph_prepare = 1;
 err = switchdev_port_obj_notify(SWITCHDEV_PORT_OBJ_ADD,
     dev, obj, &trans, extack);
 if (err)
  return err;






 trans.ph_prepare = 0;
 err = switchdev_port_obj_notify(SWITCHDEV_PORT_OBJ_ADD,
     dev, obj, &trans, extack);
 WARN(err, "%s: Commit of object (id=%d) failed.\n", dev->name, obj->id);

 return err;
}

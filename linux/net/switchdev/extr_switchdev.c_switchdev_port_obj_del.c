
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_obj {int flags; } ;
struct net_device {int dummy; } ;


 int ASSERT_RTNL () ;
 int SWITCHDEV_F_DEFER ;
 int switchdev_port_obj_del_defer (struct net_device*,struct switchdev_obj const*) ;
 int switchdev_port_obj_del_now (struct net_device*,struct switchdev_obj const*) ;

int switchdev_port_obj_del(struct net_device *dev,
      const struct switchdev_obj *obj)
{
 if (obj->flags & SWITCHDEV_F_DEFER)
  return switchdev_port_obj_del_defer(dev, obj);
 ASSERT_RTNL();
 return switchdev_port_obj_del_now(dev, obj);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_obj {int dummy; } ;
struct net_device {int dummy; } ;


 int SWITCHDEV_PORT_OBJ_DEL ;
 int switchdev_port_obj_notify (int ,struct net_device*,struct switchdev_obj const*,int *,int *) ;

__attribute__((used)) static int switchdev_port_obj_del_now(struct net_device *dev,
          const struct switchdev_obj *obj)
{
 return switchdev_port_obj_notify(SWITCHDEV_PORT_OBJ_DEL,
      dev, obj, ((void*)0), ((void*)0));
}

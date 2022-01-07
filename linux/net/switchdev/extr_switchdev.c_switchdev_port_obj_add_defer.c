
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_obj {int dummy; } ;
struct net_device {int dummy; } ;


 int switchdev_deferred_enqueue (struct net_device*,struct switchdev_obj const*,int ,int ) ;
 int switchdev_obj_size (struct switchdev_obj const*) ;
 int switchdev_port_obj_add_deferred ;

__attribute__((used)) static int switchdev_port_obj_add_defer(struct net_device *dev,
     const struct switchdev_obj *obj)
{
 return switchdev_deferred_enqueue(dev, obj, switchdev_obj_size(obj),
       switchdev_port_obj_add_deferred);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_attr {int dummy; } ;
struct net_device {int dummy; } ;


 int switchdev_deferred_enqueue (struct net_device*,struct switchdev_attr const*,int,int ) ;
 int switchdev_port_attr_set_deferred ;

__attribute__((used)) static int switchdev_port_attr_set_defer(struct net_device *dev,
      const struct switchdev_attr *attr)
{
 return switchdev_deferred_enqueue(dev, attr, sizeof(*attr),
       switchdev_port_attr_set_deferred);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mc_disabled; } ;
struct switchdev_attr {TYPE_1__ u; int flags; int id; struct net_device* orig_dev; } ;
struct net_device {int dummy; } ;


 int SWITCHDEV_ATTR_ID_BRIDGE_MC_DISABLED ;
 int SWITCHDEV_F_DEFER ;
 int switchdev_port_attr_set (struct net_device*,struct switchdev_attr*) ;

__attribute__((used)) static void br_mc_disabled_update(struct net_device *dev, bool value)
{
 struct switchdev_attr attr = {
  .orig_dev = dev,
  .id = SWITCHDEV_ATTR_ID_BRIDGE_MC_DISABLED,
  .flags = SWITCHDEV_F_DEFER,
  .u.mc_disabled = !value,
 };

 switchdev_port_attr_set(dev, &attr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdev_phys_item_id {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int switch_id; int switch_port; } ;
struct devlink_port {TYPE_1__ attrs; } ;


 int EOPNOTSUPP ;
 int memcpy (struct netdev_phys_item_id*,int *,int) ;
 struct devlink_port* netdev_to_devlink_port (struct net_device*) ;

int devlink_compat_switch_id_get(struct net_device *dev,
     struct netdev_phys_item_id *ppid)
{
 struct devlink_port *devlink_port;





 devlink_port = netdev_to_devlink_port(dev);
 if (!devlink_port || !devlink_port->attrs.switch_port)
  return -EOPNOTSUPP;

 memcpy(ppid, &devlink_port->attrs.switch_id, sizeof(*ppid));

 return 0;
}

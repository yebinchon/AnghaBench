
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_phys_item_id {int dummy; } ;
struct net_device_ops {int (* ndo_get_phys_port_name ) (struct net_device*,char*,int) ;int (* ndo_get_port_parent_id ) (struct net_device*,struct netdev_phys_item_id*) ;} ;
struct net_device {struct net_device_ops* netdev_ops; } ;
struct devlink_port {int dummy; } ;
typedef int name ;


 int DEVLINK_PORT_TYPE_ETH ;
 int EOPNOTSUPP ;
 int IFNAMSIZ ;
 int WARN_ON (int) ;
 int __devlink_port_type_set (struct devlink_port*,int ,struct net_device*) ;
 int stub1 (struct net_device*,char*,int) ;
 int stub2 (struct net_device*,struct netdev_phys_item_id*) ;

void devlink_port_type_eth_set(struct devlink_port *devlink_port,
          struct net_device *netdev)
{
 const struct net_device_ops *ops = netdev->netdev_ops;





 if (ops->ndo_get_phys_port_name) {






  char name[IFNAMSIZ];
  int err;

  err = ops->ndo_get_phys_port_name(netdev, name, sizeof(name));
  WARN_ON(err != -EOPNOTSUPP);
 }
 if (ops->ndo_get_port_parent_id) {






  struct netdev_phys_item_id ppid;
  int err;

  err = ops->ndo_get_port_parent_id(netdev, &ppid);
  WARN_ON(err != -EOPNOTSUPP);
 }
 __devlink_port_type_set(devlink_port, DEVLINK_PORT_TYPE_ETH, netdev);
}

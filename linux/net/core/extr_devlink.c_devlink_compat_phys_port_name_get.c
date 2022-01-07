
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct devlink_port {int dummy; } ;


 int ASSERT_RTNL () ;
 int EOPNOTSUPP ;
 int __devlink_port_phys_port_name_get (struct devlink_port*,char*,size_t) ;
 struct devlink_port* netdev_to_devlink_port (struct net_device*) ;

int devlink_compat_phys_port_name_get(struct net_device *dev,
          char *name, size_t len)
{
 struct devlink_port *devlink_port;





 ASSERT_RTNL();

 devlink_port = netdev_to_devlink_port(dev);
 if (!devlink_port)
  return -EOPNOTSUPP;

 return __devlink_port_phys_port_name_get(devlink_port, name, len);
}

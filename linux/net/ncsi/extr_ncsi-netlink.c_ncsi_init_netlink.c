
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int genl_register_family (int *) ;
 int ncsi_genl_family ;
 int netdev_err (struct net_device*,char*) ;

int ncsi_init_netlink(struct net_device *dev)
{
 int rc;

 rc = genl_register_family(&ncsi_genl_family);
 if (rc)
  netdev_err(dev, "ncsi: failed to register netlink family\n");

 return rc;
}

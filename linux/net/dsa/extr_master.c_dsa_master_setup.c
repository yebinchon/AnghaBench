
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct net_device {TYPE_1__ dev; struct dsa_port* dsa_ptr; } ;
struct dsa_port {int dummy; } ;


 int dsa_group ;
 int dsa_master_ethtool_setup (struct net_device*) ;
 int dsa_master_ethtool_teardown (struct net_device*) ;
 int dsa_master_ndo_setup (struct net_device*) ;
 int dsa_master_ndo_teardown (struct net_device*) ;
 int dsa_master_set_mtu (struct net_device*,struct dsa_port*) ;
 int sysfs_create_group (int *,int *) ;
 int wmb () ;

int dsa_master_setup(struct net_device *dev, struct dsa_port *cpu_dp)
{
 int ret;

 dsa_master_set_mtu(dev, cpu_dp);





 wmb();

 dev->dsa_ptr = cpu_dp;
 ret = dsa_master_ethtool_setup(dev);
 if (ret)
  return ret;

 ret = dsa_master_ndo_setup(dev);
 if (ret)
  goto out_err_ethtool_teardown;

 ret = sysfs_create_group(&dev->dev.kobj, &dsa_group);
 if (ret)
  goto out_err_ndo_teardown;

 return ret;

out_err_ndo_teardown:
 dsa_master_ndo_teardown(dev);
out_err_ethtool_teardown:
 dsa_master_ethtool_teardown(dev);
 return ret;
}

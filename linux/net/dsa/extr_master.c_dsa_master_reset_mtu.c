
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ETH_DATA_LEN ;
 int dev_set_mtu (struct net_device*,int ) ;
 int netdev_dbg (struct net_device*,char*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void dsa_master_reset_mtu(struct net_device *dev)
{
 int err;

 rtnl_lock();
 err = dev_set_mtu(dev, ETH_DATA_LEN);
 if (err)
  netdev_dbg(dev,
      "Unable to reset MTU to exclude DSA overheads\n");
 rtnl_unlock();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum lowpan_lltypes { ____Placeholder_lowpan_lltypes } lowpan_lltypes ;


 int lowpan_register_netdevice (struct net_device*,int) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int lowpan_register_netdev(struct net_device *dev,
      enum lowpan_lltypes lltype)
{
 int ret;

 rtnl_lock();
 ret = lowpan_register_netdevice(dev, lltype);
 rtnl_unlock();
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct inet6_dev {int dummy; } ;


 int ASSERT_RTNL () ;
 unsigned long NETDEV_POST_TYPE_CHANGE ;
 unsigned long NETDEV_PRE_TYPE_CHANGE ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int ipv6_mc_remap (struct inet6_dev*) ;
 int ipv6_mc_unmap (struct inet6_dev*) ;

__attribute__((used)) static void addrconf_type_change(struct net_device *dev, unsigned long event)
{
 struct inet6_dev *idev;
 ASSERT_RTNL();

 idev = __in6_dev_get(dev);

 if (event == NETDEV_POST_TYPE_CHANGE)
  ipv6_mc_remap(idev);
 else if (event == NETDEV_PRE_TYPE_CHANGE)
  ipv6_mc_unmap(idev);
}

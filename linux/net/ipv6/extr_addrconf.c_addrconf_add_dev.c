
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int flags; } ;
struct TYPE_2__ {scalar_t__ disable_ipv6; } ;
struct inet6_dev {TYPE_1__ cnf; } ;


 int ASSERT_RTNL () ;
 int EACCES ;
 struct inet6_dev* ERR_PTR (int ) ;
 int IFF_LOOPBACK ;
 scalar_t__ IS_ERR (struct inet6_dev*) ;
 int addrconf_add_mroute (struct net_device*) ;
 struct inet6_dev* ipv6_find_idev (struct net_device*) ;
 int netif_is_l3_master (struct net_device*) ;

__attribute__((used)) static struct inet6_dev *addrconf_add_dev(struct net_device *dev)
{
 struct inet6_dev *idev;

 ASSERT_RTNL();

 idev = ipv6_find_idev(dev);
 if (IS_ERR(idev))
  return idev;

 if (idev->cnf.disable_ipv6)
  return ERR_PTR(-EACCES);


 if (!(dev->flags & IFF_LOOPBACK) && !netif_is_l3_master(dev))
  addrconf_add_mroute(dev);

 return idev;
}

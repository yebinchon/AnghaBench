
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;


 int ASSERT_RTNL () ;
 int ENODEV ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int __ipv6_dev_mc_dec (struct inet6_dev*,struct in6_addr const*) ;

int ipv6_dev_mc_dec(struct net_device *dev, const struct in6_addr *addr)
{
 struct inet6_dev *idev;
 int err;

 ASSERT_RTNL();

 idev = __in6_dev_get(dev);
 if (!idev)
  err = -ENODEV;
 else
  err = __ipv6_dev_mc_dec(idev, addr);

 return err;
}

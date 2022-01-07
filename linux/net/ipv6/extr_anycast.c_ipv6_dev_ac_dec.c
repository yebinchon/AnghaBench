
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;


 int ENODEV ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int __ipv6_dev_ac_dec (struct inet6_dev*,struct in6_addr const*) ;

__attribute__((used)) static int ipv6_dev_ac_dec(struct net_device *dev, const struct in6_addr *addr)
{
 struct inet6_dev *idev = __in6_dev_get(dev);

 if (!idev)
  return -ENODEV;
 return __ipv6_dev_ac_dec(idev, addr);
}

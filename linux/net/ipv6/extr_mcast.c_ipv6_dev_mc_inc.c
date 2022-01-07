
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct in6_addr {int dummy; } ;


 int MCAST_EXCLUDE ;
 int __ipv6_dev_mc_inc (struct net_device*,struct in6_addr const*,int ) ;

int ipv6_dev_mc_inc(struct net_device *dev, const struct in6_addr *addr)
{
 return __ipv6_dev_mc_inc(dev, addr, MCAST_EXCLUDE);
}

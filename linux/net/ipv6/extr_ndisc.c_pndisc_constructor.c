
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pneigh_entry {struct net_device* dev; int key; } ;
struct net_device {int dummy; } ;
struct in6_addr {int dummy; } ;


 int EINVAL ;
 int __in6_dev_get (struct net_device*) ;
 int addrconf_addr_solict_mult (struct in6_addr*,struct in6_addr*) ;
 int ipv6_dev_mc_inc (struct net_device*,struct in6_addr*) ;

__attribute__((used)) static int pndisc_constructor(struct pneigh_entry *n)
{
 struct in6_addr *addr = (struct in6_addr *)&n->key;
 struct in6_addr maddr;
 struct net_device *dev = n->dev;

 if (!dev || !__in6_dev_get(dev))
  return -EINVAL;
 addrconf_addr_solict_mult(addr, &maddr);
 ipv6_dev_mc_inc(dev, &maddr);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __dev_mc_add (struct net_device*,unsigned char const*,int) ;

int dev_mc_add(struct net_device *dev, const unsigned char *addr)
{
 return __dev_mc_add(dev, addr, 0);
}

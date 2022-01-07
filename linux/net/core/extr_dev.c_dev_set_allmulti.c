
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __dev_set_allmulti (struct net_device*,int,int) ;

int dev_set_allmulti(struct net_device *dev, int inc)
{
 return __dev_set_allmulti(dev, inc, 1);
}

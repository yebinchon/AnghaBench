
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int dev_alloc_name_ns (int ,struct net_device*,char const*) ;
 int dev_net (struct net_device*) ;

int dev_alloc_name(struct net_device *dev, const char *name)
{
 return dev_alloc_name_ns(dev_net(dev), dev, name);
}

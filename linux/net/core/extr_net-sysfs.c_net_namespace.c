
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct device {int dummy; } ;


 void const* dev_net (struct net_device*) ;
 struct net_device* to_net_dev (struct device*) ;

__attribute__((used)) static const void *net_namespace(struct device *d)
{
 struct net_device *dev = to_net_dev(d);

 return dev_net(dev);
}

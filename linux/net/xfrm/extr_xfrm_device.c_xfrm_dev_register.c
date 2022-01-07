
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int xfrm_api_check (struct net_device*) ;

__attribute__((used)) static int xfrm_dev_register(struct net_device *dev)
{
 return xfrm_api_check(dev);
}

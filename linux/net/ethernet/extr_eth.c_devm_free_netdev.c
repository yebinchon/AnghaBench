
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct device {int dummy; } ;


 int free_netdev (struct net_device*) ;

__attribute__((used)) static void devm_free_netdev(struct device *dev, void *res)
{
 free_netdev(*(struct net_device **)res);
}

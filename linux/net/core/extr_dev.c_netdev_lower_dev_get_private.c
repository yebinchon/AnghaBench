
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdev_adjacent {void* private; } ;
struct TYPE_2__ {int lower; } ;
struct net_device {TYPE_1__ adj_list; } ;


 struct netdev_adjacent* __netdev_find_adj (struct net_device*,int *) ;

void *netdev_lower_dev_get_private(struct net_device *dev,
       struct net_device *lower_dev)
{
 struct netdev_adjacent *lower;

 if (!lower_dev)
  return ((void*)0);
 lower = __netdev_find_adj(lower_dev, &dev->adj_list.lower);
 if (!lower)
  return ((void*)0);

 return lower->private;
}

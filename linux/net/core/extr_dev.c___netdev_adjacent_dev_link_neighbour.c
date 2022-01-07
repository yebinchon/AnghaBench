
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lower; int upper; } ;
struct net_device {TYPE_1__ adj_list; } ;


 int __netdev_adjacent_dev_link_lists (struct net_device*,struct net_device*,int *,int *,void*,int) ;

__attribute__((used)) static int __netdev_adjacent_dev_link_neighbour(struct net_device *dev,
      struct net_device *upper_dev,
      void *private, bool master)
{
 return __netdev_adjacent_dev_link_lists(dev, upper_dev,
      &dev->adj_list.upper,
      &upper_dev->adj_list.lower,
      private, master);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lower; int upper; } ;
struct net_device {TYPE_1__ adj_list; } ;


 int __netdev_adjacent_dev_unlink_lists (struct net_device*,struct net_device*,int,int *,int *) ;

__attribute__((used)) static void __netdev_adjacent_dev_unlink_neighbour(struct net_device *dev,
         struct net_device *upper_dev)
{
 __netdev_adjacent_dev_unlink_lists(dev, upper_dev, 1,
        &dev->adj_list.upper,
        &upper_dev->adj_list.lower);
}

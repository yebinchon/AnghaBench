
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdev_adjacent {int ignore; } ;
struct TYPE_2__ {int upper; int lower; } ;
struct net_device {TYPE_1__ adj_list; } ;


 struct netdev_adjacent* __netdev_find_adj (struct net_device*,int *) ;

__attribute__((used)) static void __netdev_adjacent_dev_set(struct net_device *upper_dev,
          struct net_device *lower_dev,
          bool val)
{
 struct netdev_adjacent *adj;

 adj = __netdev_find_adj(lower_dev, &upper_dev->adj_list.lower);
 if (adj)
  adj->ignore = val;

 adj = __netdev_find_adj(upper_dev, &lower_dev->adj_list.upper);
 if (adj)
  adj->ignore = val;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {struct list_head lower; struct list_head upper; } ;
struct net_device {TYPE_1__ adj_list; } ;


 int dev_net (struct net_device*) ;
 scalar_t__ net_eq (int ,int ) ;

__attribute__((used)) static inline bool netdev_adjacent_is_neigh_list(struct net_device *dev,
       struct net_device *adj_dev,
       struct list_head *dev_list)
{
 return (dev_list == &dev->adj_list.upper ||
  dev_list == &dev->adj_list.lower) &&
  net_eq(dev_net(dev), dev_net(adj_dev));
}

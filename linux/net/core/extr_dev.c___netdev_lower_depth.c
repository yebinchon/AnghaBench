
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct list_head {int dummy; } ;
struct TYPE_2__ {struct list_head lower; } ;
struct net_device {scalar_t__ lower_level; TYPE_1__ adj_list; } ;


 struct net_device* __netdev_next_lower_dev (struct net_device*,struct list_head**,int*) ;

__attribute__((used)) static u8 __netdev_lower_depth(struct net_device *dev)
{
 struct net_device *ldev;
 struct list_head *iter;
 u8 max_depth = 0;
 bool ignore;

 for (iter = &dev->adj_list.lower,
      ldev = __netdev_next_lower_dev(dev, &iter, &ignore);
      ldev;
      ldev = __netdev_next_lower_dev(dev, &iter, &ignore)) {
  if (ignore)
   continue;
  if (max_depth < ldev->lower_level)
   max_depth = ldev->lower_level;
 }

 return max_depth;
}

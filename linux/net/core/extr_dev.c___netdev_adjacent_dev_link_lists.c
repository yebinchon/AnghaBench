
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct list_head {int dummy; } ;


 int __netdev_adjacent_dev_insert (struct net_device*,struct net_device*,struct list_head*,void*,int) ;
 int __netdev_adjacent_dev_remove (struct net_device*,struct net_device*,int,struct list_head*) ;

__attribute__((used)) static int __netdev_adjacent_dev_link_lists(struct net_device *dev,
         struct net_device *upper_dev,
         struct list_head *up_list,
         struct list_head *down_list,
         void *private, bool master)
{
 int ret;

 ret = __netdev_adjacent_dev_insert(dev, upper_dev, up_list,
        private, master);
 if (ret)
  return ret;

 ret = __netdev_adjacent_dev_insert(upper_dev, dev, down_list,
        private, 0);
 if (ret) {
  __netdev_adjacent_dev_remove(dev, upper_dev, 1, up_list);
  return ret;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __netdev_adjacent_dev_set (struct net_device*,struct net_device*,int) ;

__attribute__((used)) static void netdev_adjacent_dev_enable(struct net_device *upper_dev,
           struct net_device *lower_dev)
{
 __netdev_adjacent_dev_set(upper_dev, lower_dev, 0);
}

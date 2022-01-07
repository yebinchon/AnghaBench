
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ASSERT_RTNL () ;
 int ____netdev_has_upper_dev ;
 int __netdev_walk_all_upper_dev (struct net_device*,int ,struct net_device*) ;

__attribute__((used)) static bool __netdev_has_upper_dev(struct net_device *dev,
       struct net_device *upper_dev)
{
 ASSERT_RTNL();

 return __netdev_walk_all_upper_dev(dev, ____netdev_has_upper_dev,
        upper_dev);
}

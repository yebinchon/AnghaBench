
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lower; } ;
struct net_device {TYPE_1__ adj_list; } ;


 int ASSERT_RTNL () ;
 int list_empty (int *) ;

__attribute__((used)) static bool netdev_has_any_lower_dev(struct net_device *dev)
{
 ASSERT_RTNL();

 return !list_empty(&dev->adj_list.lower);
}

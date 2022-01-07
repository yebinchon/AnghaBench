
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg802154_registered_device {int wpan_phy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* del_virtual_intf_deprecated ) (int *,struct net_device*) ;} ;


 int stub1 (int *,struct net_device*) ;

__attribute__((used)) static inline void
rdev_del_virtual_intf_deprecated(struct cfg802154_registered_device *rdev,
     struct net_device *dev)
{
 rdev->ops->del_virtual_intf_deprecated(&rdev->wpan_phy, dev);
}

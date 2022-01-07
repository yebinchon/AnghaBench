
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpan_dev {int dummy; } ;
struct cfg802154_registered_device {int wpan_phy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* del_virtual_intf ) (int *,struct wpan_dev*) ;} ;


 int stub1 (int *,struct wpan_dev*) ;
 int trace_802154_rdev_del_virtual_intf (int *,struct wpan_dev*) ;
 int trace_802154_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int
rdev_del_virtual_intf(struct cfg802154_registered_device *rdev,
        struct wpan_dev *wpan_dev)
{
 int ret;

 trace_802154_rdev_del_virtual_intf(&rdev->wpan_phy, wpan_dev);
 ret = rdev->ops->del_virtual_intf(&rdev->wpan_phy, wpan_dev);
 trace_802154_rdev_return_int(&rdev->wpan_phy, ret);
 return ret;
}

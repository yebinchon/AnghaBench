
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpan_dev {int dummy; } ;
struct cfg802154_registered_device {int wpan_phy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_lbt_mode ) (int *,struct wpan_dev*,int) ;} ;


 int stub1 (int *,struct wpan_dev*,int) ;
 int trace_802154_rdev_return_int (int *,int) ;
 int trace_802154_rdev_set_lbt_mode (int *,struct wpan_dev*,int) ;

__attribute__((used)) static inline int
rdev_set_lbt_mode(struct cfg802154_registered_device *rdev,
    struct wpan_dev *wpan_dev, bool mode)
{
 int ret;

 trace_802154_rdev_set_lbt_mode(&rdev->wpan_phy, wpan_dev, mode);
 ret = rdev->ops->set_lbt_mode(&rdev->wpan_phy, wpan_dev, mode);
 trace_802154_rdev_return_int(&rdev->wpan_phy, ret);
 return ret;
}

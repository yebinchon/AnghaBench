
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpan_dev {int dummy; } ;
struct cfg802154_registered_device {int wpan_phy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_max_csma_backoffs ) (int *,struct wpan_dev*,int ) ;} ;


 int stub1 (int *,struct wpan_dev*,int ) ;
 int trace_802154_rdev_return_int (int *,int) ;
 int trace_802154_rdev_set_csma_backoffs (int *,struct wpan_dev*,int ) ;

__attribute__((used)) static inline int
rdev_set_max_csma_backoffs(struct cfg802154_registered_device *rdev,
      struct wpan_dev *wpan_dev, u8 max_csma_backoffs)
{
 int ret;

 trace_802154_rdev_set_csma_backoffs(&rdev->wpan_phy, wpan_dev,
         max_csma_backoffs);
 ret = rdev->ops->set_max_csma_backoffs(&rdev->wpan_phy, wpan_dev,
            max_csma_backoffs);
 trace_802154_rdev_return_int(&rdev->wpan_phy, ret);
 return ret;
}

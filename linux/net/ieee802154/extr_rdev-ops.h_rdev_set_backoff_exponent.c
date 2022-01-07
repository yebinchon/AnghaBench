
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpan_dev {int dummy; } ;
struct cfg802154_registered_device {int wpan_phy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_backoff_exponent ) (int *,struct wpan_dev*,int ,int ) ;} ;


 int stub1 (int *,struct wpan_dev*,int ,int ) ;
 int trace_802154_rdev_return_int (int *,int) ;
 int trace_802154_rdev_set_backoff_exponent (int *,struct wpan_dev*,int ,int ) ;

__attribute__((used)) static inline int
rdev_set_backoff_exponent(struct cfg802154_registered_device *rdev,
     struct wpan_dev *wpan_dev, u8 min_be, u8 max_be)
{
 int ret;

 trace_802154_rdev_set_backoff_exponent(&rdev->wpan_phy, wpan_dev,
            min_be, max_be);
 ret = rdev->ops->set_backoff_exponent(&rdev->wpan_phy, wpan_dev,
           min_be, max_be);
 trace_802154_rdev_return_int(&rdev->wpan_phy, ret);
 return ret;
}

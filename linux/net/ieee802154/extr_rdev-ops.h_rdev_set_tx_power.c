
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg802154_registered_device {int wpan_phy; TYPE_1__* ops; } ;
typedef int s32 ;
struct TYPE_2__ {int (* set_tx_power ) (int *,int ) ;} ;


 int stub1 (int *,int ) ;
 int trace_802154_rdev_return_int (int *,int) ;
 int trace_802154_rdev_set_tx_power (int *,int ) ;

__attribute__((used)) static inline int
rdev_set_tx_power(struct cfg802154_registered_device *rdev,
    s32 power)
{
 int ret;

 trace_802154_rdev_set_tx_power(&rdev->wpan_phy, power);
 ret = rdev->ops->set_tx_power(&rdev->wpan_phy, power);
 trace_802154_rdev_return_int(&rdev->wpan_phy, ret);
 return ret;
}

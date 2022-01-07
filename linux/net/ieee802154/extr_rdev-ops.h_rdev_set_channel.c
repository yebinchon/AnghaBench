
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cfg802154_registered_device {int wpan_phy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_channel ) (int *,int ,int ) ;} ;


 int stub1 (int *,int ,int ) ;
 int trace_802154_rdev_return_int (int *,int) ;
 int trace_802154_rdev_set_channel (int *,int ,int ) ;

__attribute__((used)) static inline int
rdev_set_channel(struct cfg802154_registered_device *rdev, u8 page, u8 channel)
{
 int ret;

 trace_802154_rdev_set_channel(&rdev->wpan_phy, page, channel);
 ret = rdev->ops->set_channel(&rdev->wpan_phy, page, channel);
 trace_802154_rdev_return_int(&rdev->wpan_phy, ret);
 return ret;
}

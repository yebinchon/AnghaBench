
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpan_phy_cca {int dummy; } ;
struct cfg802154_registered_device {int wpan_phy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_cca_mode ) (int *,struct wpan_phy_cca const*) ;} ;


 int stub1 (int *,struct wpan_phy_cca const*) ;
 int trace_802154_rdev_return_int (int *,int) ;
 int trace_802154_rdev_set_cca_mode (int *,struct wpan_phy_cca const*) ;

__attribute__((used)) static inline int
rdev_set_cca_mode(struct cfg802154_registered_device *rdev,
    const struct wpan_phy_cca *cca)
{
 int ret;

 trace_802154_rdev_set_cca_mode(&rdev->wpan_phy, cca);
 ret = rdev->ops->set_cca_mode(&rdev->wpan_phy, cca);
 trace_802154_rdev_return_int(&rdev->wpan_phy, ret);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpan_phy_cca {int dummy; } ;
struct ieee802154_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_cca_mode ) (int *,struct wpan_phy_cca const*) ;} ;


 int EOPNOTSUPP ;
 int WARN_ON (int) ;
 int might_sleep () ;
 int stub1 (int *,struct wpan_phy_cca const*) ;
 int trace_802154_drv_return_int (struct ieee802154_local*,int) ;
 int trace_802154_drv_set_cca_mode (struct ieee802154_local*,struct wpan_phy_cca const*) ;

__attribute__((used)) static inline int drv_set_cca_mode(struct ieee802154_local *local,
       const struct wpan_phy_cca *cca)
{
 int ret;

 might_sleep();

 if (!local->ops->set_cca_mode) {
  WARN_ON(1);
  return -EOPNOTSUPP;
 }

 trace_802154_drv_set_cca_mode(local, cca);
 ret = local->ops->set_cca_mode(&local->hw, cca);
 trace_802154_drv_return_int(local, ret);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee802154_local {int hw; TYPE_1__* ops; } ;
typedef int s32 ;
struct TYPE_2__ {int (* set_cca_ed_level ) (int *,int ) ;} ;


 int EOPNOTSUPP ;
 int WARN_ON (int) ;
 int might_sleep () ;
 int stub1 (int *,int ) ;
 int trace_802154_drv_return_int (struct ieee802154_local*,int) ;
 int trace_802154_drv_set_cca_ed_level (struct ieee802154_local*,int ) ;

__attribute__((used)) static inline int
drv_set_cca_ed_level(struct ieee802154_local *local, s32 mbm)
{
 int ret;

 might_sleep();

 if (!local->ops->set_cca_ed_level) {
  WARN_ON(1);
  return -EOPNOTSUPP;
 }

 trace_802154_drv_set_cca_ed_level(local, mbm);
 ret = local->ops->set_cca_ed_level(&local->hw, mbm);
 trace_802154_drv_return_int(local, ret);
 return ret;
}

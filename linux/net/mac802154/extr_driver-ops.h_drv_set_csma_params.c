
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee802154_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_csma_params ) (int *,int ,int ,int ) ;} ;


 int EOPNOTSUPP ;
 int WARN_ON (int) ;
 int might_sleep () ;
 int stub1 (int *,int ,int ,int ) ;
 int trace_802154_drv_return_int (struct ieee802154_local*,int) ;
 int trace_802154_drv_set_csma_params (struct ieee802154_local*,int ,int ,int ) ;

__attribute__((used)) static inline int
drv_set_csma_params(struct ieee802154_local *local, u8 min_be, u8 max_be,
      u8 max_csma_backoffs)
{
 int ret;

 might_sleep();

 if (!local->ops->set_csma_params) {
  WARN_ON(1);
  return -EOPNOTSUPP;
 }

 trace_802154_drv_set_csma_params(local, min_be, max_be,
      max_csma_backoffs);
 ret = local->ops->set_csma_params(&local->hw, min_be, max_be,
        max_csma_backoffs);
 trace_802154_drv_return_int(local, ret);
 return ret;
}

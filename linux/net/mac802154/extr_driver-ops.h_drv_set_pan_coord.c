
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee802154_local {int hw; TYPE_1__* ops; } ;
struct ieee802154_hw_addr_filt {int pan_coord; } ;
struct TYPE_2__ {int (* set_hw_addr_filt ) (int *,struct ieee802154_hw_addr_filt*,int ) ;} ;


 int EOPNOTSUPP ;
 int IEEE802154_AFILT_PANC_CHANGED ;
 int WARN_ON (int) ;
 int might_sleep () ;
 int stub1 (int *,struct ieee802154_hw_addr_filt*,int ) ;
 int trace_802154_drv_return_int (struct ieee802154_local*,int) ;
 int trace_802154_drv_set_pan_coord (struct ieee802154_local*,int) ;

__attribute__((used)) static inline int
drv_set_pan_coord(struct ieee802154_local *local, bool is_coord)
{
 struct ieee802154_hw_addr_filt filt;
 int ret;

 might_sleep();

 if (!local->ops->set_hw_addr_filt) {
  WARN_ON(1);
  return -EOPNOTSUPP;
 }

 filt.pan_coord = is_coord;

 trace_802154_drv_set_pan_coord(local, is_coord);
 ret = local->ops->set_hw_addr_filt(&local->hw, &filt,
         IEEE802154_AFILT_PANC_CHANGED);
 trace_802154_drv_return_int(local, ret);
 return ret;
}

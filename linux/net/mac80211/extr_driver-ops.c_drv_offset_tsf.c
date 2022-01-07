
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
typedef int s64 ;
struct TYPE_2__ {int (* offset_tsf ) (int *,int *,int ) ;} ;


 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int might_sleep () ;
 int stub1 (int *,int *,int ) ;
 int trace_drv_offset_tsf (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

void drv_offset_tsf(struct ieee80211_local *local,
      struct ieee80211_sub_if_data *sdata,
      s64 offset)
{
 might_sleep();

 if (!check_sdata_in_driver(sdata))
  return;

 trace_drv_offset_tsf(local, sdata, offset);
 if (local->ops->offset_tsf)
  local->ops->offset_tsf(&local->hw, &sdata->vif, offset);
 trace_drv_return_void(local);
}

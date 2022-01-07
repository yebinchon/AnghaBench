
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* del_nan_func ) (int *,int *,int ) ;} ;


 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int might_sleep () ;
 int stub1 (int *,int *,int ) ;
 int trace_drv_del_nan_func (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

__attribute__((used)) static inline void drv_del_nan_func(struct ieee80211_local *local,
       struct ieee80211_sub_if_data *sdata,
       u8 instance_id)
{
 might_sleep();
 check_sdata_in_driver(sdata);

 trace_drv_del_nan_func(local, sdata, instance_id);
 if (local->ops->del_nan_func)
  local->ops->del_nan_func(&local->hw, &sdata->vif, instance_id);
 trace_drv_return_void(local);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sw_scan_start ) (int *,int *,int const*) ;} ;


 int might_sleep () ;
 int stub1 (int *,int *,int const*) ;
 int trace_drv_return_void (struct ieee80211_local*) ;
 int trace_drv_sw_scan_start (struct ieee80211_local*,struct ieee80211_sub_if_data*,int const*) ;

__attribute__((used)) static inline void drv_sw_scan_start(struct ieee80211_local *local,
         struct ieee80211_sub_if_data *sdata,
         const u8 *mac_addr)
{
 might_sleep();

 trace_drv_sw_scan_start(local, sdata, mac_addr);
 if (local->ops->sw_scan_start)
  local->ops->sw_scan_start(&local->hw, &sdata->vif, mac_addr);
 trace_drv_return_void(local);
}

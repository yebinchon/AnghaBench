
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* config_iface_filter ) (int *,int *,unsigned int,unsigned int) ;} ;


 int might_sleep () ;
 int stub1 (int *,int *,unsigned int,unsigned int) ;
 int trace_drv_config_iface_filter (struct ieee80211_local*,struct ieee80211_sub_if_data*,unsigned int,unsigned int) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

__attribute__((used)) static inline void drv_config_iface_filter(struct ieee80211_local *local,
        struct ieee80211_sub_if_data *sdata,
        unsigned int filter_flags,
        unsigned int changed_flags)
{
 might_sleep();

 trace_drv_config_iface_filter(local, sdata, filter_flags,
          changed_flags);
 if (local->ops->config_iface_filter)
  local->ops->config_iface_filter(&local->hw, &sdata->vif,
      filter_flags,
      changed_flags);
 trace_drv_return_void(local);
}

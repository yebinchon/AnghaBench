
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_local {int hw; TYPE_1__* ops; } ;
typedef enum ieee80211_reconfig_type { ____Placeholder_ieee80211_reconfig_type } ieee80211_reconfig_type ;
struct TYPE_2__ {int (* reconfig_complete ) (int *,int) ;} ;


 int might_sleep () ;
 int stub1 (int *,int) ;
 int trace_drv_reconfig_complete (struct ieee80211_local*,int) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

__attribute__((used)) static inline void
drv_reconfig_complete(struct ieee80211_local *local,
        enum ieee80211_reconfig_type reconfig_type)
{
 might_sleep();

 trace_drv_reconfig_complete(local, reconfig_type);
 if (local->ops->reconfig_complete)
  local->ops->reconfig_complete(&local->hw, reconfig_type);
 trace_drv_return_void(local);
}

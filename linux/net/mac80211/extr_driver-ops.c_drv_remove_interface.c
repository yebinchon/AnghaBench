
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int flags; int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* remove_interface ) (int *,int *) ;} ;


 int IEEE80211_SDATA_IN_DRIVER ;
 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int might_sleep () ;
 int stub1 (int *,int *) ;
 int trace_drv_remove_interface (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

void drv_remove_interface(struct ieee80211_local *local,
     struct ieee80211_sub_if_data *sdata)
{
 might_sleep();

 if (!check_sdata_in_driver(sdata))
  return;

 trace_drv_remove_interface(local, sdata);
 local->ops->remove_interface(&local->hw, &sdata->vif);
 sdata->flags &= ~IEEE80211_SDATA_IN_DRIVER;
 trace_drv_return_void(local);
}

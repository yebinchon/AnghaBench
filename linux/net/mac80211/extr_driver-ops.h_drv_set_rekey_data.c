
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct cfg80211_gtk_rekey_data {int dummy; } ;
struct TYPE_2__ {int (* set_rekey_data ) (int *,int *,struct cfg80211_gtk_rekey_data*) ;} ;


 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int stub1 (int *,int *,struct cfg80211_gtk_rekey_data*) ;
 int trace_drv_return_void (struct ieee80211_local*) ;
 int trace_drv_set_rekey_data (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct cfg80211_gtk_rekey_data*) ;

__attribute__((used)) static inline void drv_set_rekey_data(struct ieee80211_local *local,
          struct ieee80211_sub_if_data *sdata,
          struct cfg80211_gtk_rekey_data *data)
{
 if (!check_sdata_in_driver(sdata))
  return;

 trace_drv_set_rekey_data(local, sdata, data);
 if (local->ops->set_rekey_data)
  local->ops->set_rekey_data(&local->hw, &sdata->vif, data);
 trace_drv_return_void(local);
}

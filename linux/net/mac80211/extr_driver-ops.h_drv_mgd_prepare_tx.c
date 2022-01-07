
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* mgd_prepare_tx ) (int *,TYPE_2__*,int ) ;} ;


 scalar_t__ NL80211_IFTYPE_STATION ;
 int WARN_ON_ONCE (int) ;
 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int might_sleep () ;
 int stub1 (int *,TYPE_2__*,int ) ;
 int trace_drv_mgd_prepare_tx (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

__attribute__((used)) static inline void drv_mgd_prepare_tx(struct ieee80211_local *local,
          struct ieee80211_sub_if_data *sdata,
          u16 duration)
{
 might_sleep();

 if (!check_sdata_in_driver(sdata))
  return;
 WARN_ON_ONCE(sdata->vif.type != NL80211_IFTYPE_STATION);

 trace_drv_mgd_prepare_tx(local, sdata, duration);
 if (local->ops->mgd_prepare_tx)
  local->ops->mgd_prepare_tx(&local->hw, &sdata->vif, duration);
 trace_drv_return_void(local);
}

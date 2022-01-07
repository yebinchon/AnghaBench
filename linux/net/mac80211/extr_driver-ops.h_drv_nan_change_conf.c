
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct cfg80211_nan_conf {int dummy; } ;
struct TYPE_2__ {int (* nan_change_conf ) (int *,int *,struct cfg80211_nan_conf*,int ) ;} ;


 int EOPNOTSUPP ;
 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int might_sleep () ;
 int stub1 (int *,int *,struct cfg80211_nan_conf*,int ) ;
 int trace_drv_nan_change_conf (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct cfg80211_nan_conf*,int ) ;
 int trace_drv_return_int (struct ieee80211_local*,int) ;

__attribute__((used)) static inline int drv_nan_change_conf(struct ieee80211_local *local,
           struct ieee80211_sub_if_data *sdata,
           struct cfg80211_nan_conf *conf,
           u32 changes)
{
 int ret;

 might_sleep();
 check_sdata_in_driver(sdata);

 if (!local->ops->nan_change_conf)
  return -EOPNOTSUPP;

 trace_drv_nan_change_conf(local, sdata, conf, changes);
 ret = local->ops->nan_change_conf(&local->hw, &sdata->vif, conf,
       changes);
 trace_drv_return_int(local, ret);

 return ret;
}

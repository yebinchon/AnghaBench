
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct cfg80211_nan_conf {int dummy; } ;
struct TYPE_2__ {int (* start_nan ) (int *,int *,struct cfg80211_nan_conf*) ;} ;


 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int might_sleep () ;
 int stub1 (int *,int *,struct cfg80211_nan_conf*) ;
 int trace_drv_return_int (struct ieee80211_local*,int) ;
 int trace_drv_start_nan (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct cfg80211_nan_conf*) ;

__attribute__((used)) static inline int drv_start_nan(struct ieee80211_local *local,
    struct ieee80211_sub_if_data *sdata,
    struct cfg80211_nan_conf *conf)
{
 int ret;

 might_sleep();
 check_sdata_in_driver(sdata);

 trace_drv_start_nan(local, sdata, conf);
 ret = local->ops->start_nan(&local->hw, &sdata->vif, conf);
 trace_drv_return_int(local, ret);
 return ret;
}

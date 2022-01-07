
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct cfg80211_nan_func {int dummy; } ;
struct TYPE_2__ {int (* add_nan_func ) (int *,int *,struct cfg80211_nan_func const*) ;} ;


 int EOPNOTSUPP ;
 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int might_sleep () ;
 int stub1 (int *,int *,struct cfg80211_nan_func const*) ;
 int trace_drv_add_nan_func (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct cfg80211_nan_func const*) ;
 int trace_drv_return_int (struct ieee80211_local*,int) ;

__attribute__((used)) static inline int drv_add_nan_func(struct ieee80211_local *local,
       struct ieee80211_sub_if_data *sdata,
       const struct cfg80211_nan_func *nan_func)
{
 int ret;

 might_sleep();
 check_sdata_in_driver(sdata);

 if (!local->ops->add_nan_func)
  return -EOPNOTSUPP;

 trace_drv_add_nan_func(local, sdata, nan_func);
 ret = local->ops->add_nan_func(&local->hw, &sdata->vif, nan_func);
 trace_drv_return_int(local, ret);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct ieee80211_channel {int dummy; } ;
typedef enum ieee80211_roc_type { ____Placeholder_ieee80211_roc_type } ieee80211_roc_type ;
struct TYPE_2__ {int (* remain_on_channel ) (int *,int *,struct ieee80211_channel*,unsigned int,int) ;} ;


 int might_sleep () ;
 int stub1 (int *,int *,struct ieee80211_channel*,unsigned int,int) ;
 int trace_drv_remain_on_channel (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_channel*,unsigned int,int) ;
 int trace_drv_return_int (struct ieee80211_local*,int) ;

__attribute__((used)) static inline int drv_remain_on_channel(struct ieee80211_local *local,
     struct ieee80211_sub_if_data *sdata,
     struct ieee80211_channel *chan,
     unsigned int duration,
     enum ieee80211_roc_type type)
{
 int ret;

 might_sleep();

 trace_drv_remain_on_channel(local, sdata, chan, duration, type);
 ret = local->ops->remain_on_channel(&local->hw, &sdata->vif,
         chan, duration, type);
 trace_drv_return_int(local, ret);

 return ret;
}

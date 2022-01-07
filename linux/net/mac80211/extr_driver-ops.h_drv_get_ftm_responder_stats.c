
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct cfg80211_ftm_responder_stats {int dummy; } ;
struct TYPE_2__ {int (* get_ftm_responder_stats ) (int *,int *,struct cfg80211_ftm_responder_stats*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (int *,int *,struct cfg80211_ftm_responder_stats*) ;
 int trace_drv_get_ftm_responder_stats (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct cfg80211_ftm_responder_stats*) ;

__attribute__((used)) static inline int
drv_get_ftm_responder_stats(struct ieee80211_local *local,
       struct ieee80211_sub_if_data *sdata,
       struct cfg80211_ftm_responder_stats *ftm_stats)
{
 u32 ret = -EOPNOTSUPP;

 if (local->ops->get_ftm_responder_stats)
  ret = local->ops->get_ftm_responder_stats(&local->hw,
        &sdata->vif,
        ftm_stats);
 trace_drv_get_ftm_responder_stats(local, sdata, ftm_stats);

 return ret;
}

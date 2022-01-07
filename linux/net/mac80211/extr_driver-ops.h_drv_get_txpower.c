
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_txpower ) (int *,int *,int*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (int *,int *,int*) ;
 int trace_drv_get_txpower (struct ieee80211_local*,struct ieee80211_sub_if_data*,int,int) ;

__attribute__((used)) static inline int drv_get_txpower(struct ieee80211_local *local,
      struct ieee80211_sub_if_data *sdata, int *dbm)
{
 int ret;

 if (!local->ops->get_txpower)
  return -EOPNOTSUPP;

 ret = local->ops->get_txpower(&local->hw, &sdata->vif, dbm);
 trace_drv_get_txpower(local, sdata, *dbm, ret);

 return ret;
}

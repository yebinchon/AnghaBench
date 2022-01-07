
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; struct ieee80211_local* local; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* abort_channel_switch ) (int *,int *) ;} ;


 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int stub1 (int *,int *) ;
 int trace_drv_abort_channel_switch (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;

__attribute__((used)) static inline void
drv_abort_channel_switch(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_local *local = sdata->local;

 if (!check_sdata_in_driver(sdata))
  return;

 trace_drv_abort_channel_switch(local, sdata);

 if (local->ops->abort_channel_switch)
  local->ops->abort_channel_switch(&local->hw, &sdata->vif);
}

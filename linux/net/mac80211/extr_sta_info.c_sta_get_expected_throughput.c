
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sta_info {int rate_ctrl_priv; struct ieee80211_sub_if_data* sdata; } ;
struct rate_control_ref {TYPE_1__* ops; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {struct rate_control_ref* rate_ctrl; } ;
struct TYPE_2__ {int (* get_expected_throughput ) (int ) ;} ;


 int WLAN_STA_RATE_CONTROL ;
 int drv_get_expected_throughput (struct ieee80211_local*,struct sta_info*) ;
 int stub1 (int ) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

u32 sta_get_expected_throughput(struct sta_info *sta)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 struct ieee80211_local *local = sdata->local;
 struct rate_control_ref *ref = ((void*)0);
 u32 thr = 0;

 if (test_sta_flag(sta, WLAN_STA_RATE_CONTROL))
  ref = local->rate_ctrl;


 if (ref && ref->ops->get_expected_throughput)
  thr = ref->ops->get_expected_throughput(sta->rate_ctrl_priv);
 else
  thr = drv_get_expected_throughput(local, sta);

 return thr;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_if_managed {int conn_mon_timer; scalar_t__ probe_send_count; int associated; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__* local; TYPE_1__ u; } ;
struct TYPE_4__ {int hw; } ;


 int CONNECTION_MONITOR ;
 scalar_t__ IEEE80211_CONNECTION_IDLE_TIME ;
 scalar_t__ ieee80211_hw_check (int *,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies_up (scalar_t__) ;
 scalar_t__ unlikely (int) ;

void ieee80211_sta_reset_conn_monitor(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;

 if (unlikely(!ifmgd->associated))
  return;

 if (ifmgd->probe_send_count)
  ifmgd->probe_send_count = 0;

 if (ieee80211_hw_check(&sdata->local->hw, CONNECTION_MONITOR))
  return;

 mod_timer(&ifmgd->conn_mon_timer,
    round_jiffies_up(jiffies + IEEE80211_CONNECTION_IDLE_TIME));
}

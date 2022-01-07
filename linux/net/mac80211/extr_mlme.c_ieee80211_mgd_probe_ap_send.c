
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sta_info {int dummy; } ;
struct TYPE_6__ {int addr; } ;
struct ieee80211_if_managed {scalar_t__ probe_send_count; int nullfunc_failed; int flags; scalar_t__ probe_timeout; TYPE_4__* associated; } ;
struct TYPE_5__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; TYPE_3__* local; TYPE_1__ u; } ;
struct TYPE_8__ {int channel; scalar_t__* bssid; } ;
struct TYPE_7__ {int hw; int sta_mtx; } ;


 int IEEE80211_STA_DISABLE_HE ;
 int REPORTS_TX_ACK_STATUS ;
 int WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int WLAN_EID_SSID ;
 scalar_t__* ieee80211_bss_get_ie (TYPE_4__*,int ) ;
 int ieee80211_check_fast_rx (struct sta_info*) ;
 scalar_t__ ieee80211_hw_check (int *,int ) ;
 int ieee80211_mlme_send_probe_req (struct ieee80211_sub_if_data*,int ,scalar_t__*,scalar_t__ const*,int,int ) ;
 int ieee80211_send_nullfunc (TYPE_3__*,struct ieee80211_sub_if_data*,int) ;
 scalar_t__ jiffies ;
 scalar_t__ max (int,scalar_t__) ;
 scalar_t__ max_probe_tries ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int probe_wait_ms ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int run_again (struct ieee80211_sub_if_data*,scalar_t__) ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,scalar_t__*) ;

__attribute__((used)) static void ieee80211_mgd_probe_ap_send(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 const u8 *ssid;
 u8 *dst = ifmgd->associated->bssid;
 u8 unicast_limit = max(1, max_probe_tries - 3);
 struct sta_info *sta;






 if (ifmgd->probe_send_count >= unicast_limit)
  dst = ((void*)0);
 ifmgd->probe_send_count++;

 if (dst) {
  mutex_lock(&sdata->local->sta_mtx);
  sta = sta_info_get(sdata, dst);
  if (!WARN_ON(!sta))
   ieee80211_check_fast_rx(sta);
  mutex_unlock(&sdata->local->sta_mtx);
 }

 if (ieee80211_hw_check(&sdata->local->hw, REPORTS_TX_ACK_STATUS)) {
  ifmgd->nullfunc_failed = 0;
  if (!(ifmgd->flags & IEEE80211_STA_DISABLE_HE))
   ifmgd->probe_send_count--;
  else
   ieee80211_send_nullfunc(sdata->local, sdata, 0);
 } else {
  int ssid_len;

  rcu_read_lock();
  ssid = ieee80211_bss_get_ie(ifmgd->associated, WLAN_EID_SSID);
  if (WARN_ON_ONCE(ssid == ((void*)0)))
   ssid_len = 0;
  else
   ssid_len = ssid[1];

  ieee80211_mlme_send_probe_req(sdata, sdata->vif.addr, dst,
           ssid + 2, ssid_len,
           ifmgd->associated->channel);
  rcu_read_unlock();
 }

 ifmgd->probe_timeout = jiffies + msecs_to_jiffies(probe_wait_ms);
 run_again(sdata, ifmgd->probe_timeout);
}

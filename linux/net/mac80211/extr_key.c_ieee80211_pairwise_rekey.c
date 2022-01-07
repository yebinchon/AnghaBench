
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int addr; } ;
struct TYPE_6__ {int mtx; } ;
struct sta_info {scalar_t__ ptk_idx; TYPE_3__ sta; TYPE_2__ ampdu_mlme; } ;
struct TYPE_8__ {int wiphy; } ;
struct ieee80211_local {TYPE_4__ hw; } ;
struct TYPE_5__ {int flags; } ;
struct ieee80211_key {int flags; int sdata; TYPE_1__ conf; struct sta_info* sta; struct ieee80211_local* local; } ;


 int AGG_STOP_LOCAL_REQUEST ;
 int AMPDU_AGGREGATION ;
 int AMPDU_KEYBORDER_SUPPORT ;
 int IEEE80211_KEY_FLAG_NO_AUTO_TX ;
 int IEEE80211_NUM_TIDS ;
 scalar_t__ INVALID_PTK_KEYIDX ;
 int KEY_FLAG_TAINTED ;
 int KEY_FLAG_UPLOADED_TO_HARDWARE ;
 int NL80211_EXT_FEATURE_CAN_REPLACE_PTK0 ;
 int WLAN_STA_BLOCK_BA ;
 int ___ieee80211_stop_tx_ba_session (struct sta_info*,int,int ) ;
 int assert_key_lock (struct ieee80211_local*) ;
 int ieee80211_clear_fast_xmit (struct sta_info*) ;
 int ieee80211_flush_queues (struct ieee80211_local*,int ,int) ;
 scalar_t__ ieee80211_hw_check (TYPE_4__*,int ) ;
 int ieee80211_sta_tear_down_BA_sessions (struct sta_info*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn_ratelimited (char*,int ) ;
 int set_sta_flag (struct sta_info*,int ) ;
 int wiphy_ext_feature_isset (int ,int ) ;

__attribute__((used)) static void ieee80211_pairwise_rekey(struct ieee80211_key *old,
         struct ieee80211_key *new)
{
 struct ieee80211_local *local = new->local;
 struct sta_info *sta = new->sta;
 int i;

 assert_key_lock(local);

 if (new->conf.flags & IEEE80211_KEY_FLAG_NO_AUTO_TX) {


  if (sta->ptk_idx != INVALID_PTK_KEYIDX &&
      !ieee80211_hw_check(&local->hw, AMPDU_KEYBORDER_SUPPORT)) {
   set_sta_flag(sta, WLAN_STA_BLOCK_BA);
   mutex_lock(&sta->ampdu_mlme.mtx);
   for (i = 0; i < IEEE80211_NUM_TIDS; i++)
    ___ieee80211_stop_tx_ba_session(sta, i,
        AGG_STOP_LOCAL_REQUEST);
   mutex_unlock(&sta->ampdu_mlme.mtx);
  }
 } else if (old) {





  if (!(old->flags & KEY_FLAG_UPLOADED_TO_HARDWARE))
   return;


  old->flags |= KEY_FLAG_TAINTED;
  ieee80211_clear_fast_xmit(sta);
  if (ieee80211_hw_check(&local->hw, AMPDU_AGGREGATION)) {
   set_sta_flag(sta, WLAN_STA_BLOCK_BA);
   ieee80211_sta_tear_down_BA_sessions(sta,
           AGG_STOP_LOCAL_REQUEST);
  }
  if (!wiphy_ext_feature_isset(local->hw.wiphy,
          NL80211_EXT_FEATURE_CAN_REPLACE_PTK0)) {
   pr_warn_ratelimited("Rekeying PTK for STA %pM but driver can't safely do that.",
         sta->sta.addr);



   ieee80211_flush_queues(local, old->sdata, 0);
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta_info {int ptk_idx; } ;
struct ieee80211_local {int hw; } ;
struct TYPE_2__ {int keyidx; } ;
struct ieee80211_key {TYPE_1__ conf; struct ieee80211_local* local; struct sta_info* sta; } ;


 int AMPDU_KEYBORDER_SUPPORT ;
 int WLAN_STA_BLOCK_BA ;
 int assert_key_lock (struct ieee80211_local*) ;
 int clear_sta_flag (struct sta_info*,int ) ;
 int ieee80211_check_fast_xmit (struct sta_info*) ;
 int ieee80211_hw_check (int *,int ) ;

int ieee80211_set_tx_key(struct ieee80211_key *key)
{
 struct sta_info *sta = key->sta;
 struct ieee80211_local *local = key->local;

 assert_key_lock(local);

 sta->ptk_idx = key->conf.keyidx;

 if (!ieee80211_hw_check(&local->hw, AMPDU_KEYBORDER_SUPPORT))
  clear_sta_flag(sta, WLAN_STA_BLOCK_BA);
 ieee80211_check_fast_xmit(sta);

 return 0;
}

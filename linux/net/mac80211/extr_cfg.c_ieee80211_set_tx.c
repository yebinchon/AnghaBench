
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct sta_info {size_t ptk_idx; int * ptk; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct TYPE_4__ {int wiphy; } ;
struct ieee80211_local {int key_mtx; TYPE_2__ hw; } ;
struct TYPE_3__ {int flags; } ;
struct ieee80211_key {TYPE_1__ conf; } ;


 int EINVAL ;
 int IEEE80211_KEY_FLAG_NO_AUTO_TX ;
 int NL80211_EXT_FEATURE_EXT_KEY_ID ;
 int ieee80211_set_tx_key (struct ieee80211_key*) ;
 struct ieee80211_key* key_mtx_dereference (struct ieee80211_local*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sta_info* sta_info_get_bss (struct ieee80211_sub_if_data*,size_t const*) ;
 int wiphy_ext_feature_isset (int ,int ) ;

__attribute__((used)) static int ieee80211_set_tx(struct ieee80211_sub_if_data *sdata,
       const u8 *mac_addr, u8 key_idx)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_key *key;
 struct sta_info *sta;
 int ret = -EINVAL;

 if (!wiphy_ext_feature_isset(local->hw.wiphy,
         NL80211_EXT_FEATURE_EXT_KEY_ID))
  return -EINVAL;

 sta = sta_info_get_bss(sdata, mac_addr);

 if (!sta)
  return -EINVAL;

 if (sta->ptk_idx == key_idx)
  return 0;

 mutex_lock(&local->key_mtx);
 key = key_mtx_dereference(local, sta->ptk[key_idx]);

 if (key && key->conf.flags & IEEE80211_KEY_FLAG_NO_AUTO_TX)
  ret = ieee80211_set_tx_key(key);

 mutex_unlock(&local->key_mtx);
 return ret;
}

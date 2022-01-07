
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct sta_info {struct ieee80211_cipher_scheme const* cipher_scheme; } ;
struct net_device {int dummy; } ;
struct key_params {scalar_t__ mode; int cipher; int seq; int seq_len; int key; int key_len; } ;
struct TYPE_8__ {int security; } ;
struct TYPE_7__ {int mfp; } ;
struct TYPE_9__ {TYPE_3__ mesh; TYPE_2__ mgd; } ;
struct TYPE_6__ {int type; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; TYPE_1__ vif; struct ieee80211_local* local; } ;
struct ieee80211_local {int sta_mtx; } ;
struct TYPE_10__ {int flags; } ;
struct ieee80211_key {TYPE_5__ conf; } ;
struct ieee80211_cipher_scheme {int dummy; } ;


 int EINVAL ;
 int ENETDOWN ;
 int ENOENT ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int IEEE80211_KEY_FLAG_NO_AUTO_TX ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 int IEEE80211_KEY_FLAG_RX_MGMT ;
 int IEEE80211_MESH_SEC_NONE ;
 int IEEE80211_MFP_DISABLED ;
 scalar_t__ IS_ERR (struct ieee80211_key*) ;
 scalar_t__ NL80211_KEY_NO_TX ;
 scalar_t__ NL80211_KEY_SET_TX ;

 int PTR_ERR (struct ieee80211_key*) ;
 int WARN_ON_ONCE (int) ;
 int WLAN_STA_ASSOC ;
 int WLAN_STA_MFP ;
 int fips_enabled ;
 struct ieee80211_cipher_scheme* ieee80211_cs_get (struct ieee80211_local*,int,int) ;
 struct ieee80211_key* ieee80211_key_alloc (int,int ,int ,int ,int ,int ,struct ieee80211_cipher_scheme const*) ;
 int ieee80211_key_free_unused (struct ieee80211_key*) ;
 int ieee80211_key_link (struct ieee80211_key*,struct ieee80211_sub_if_data*,struct sta_info*) ;
 int ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;
 int ieee80211_set_tx (struct ieee80211_sub_if_data*,int const*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sta_info* sta_info_get_bss (struct ieee80211_sub_if_data*,int const*) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static int ieee80211_add_key(struct wiphy *wiphy, struct net_device *dev,
        u8 key_idx, bool pairwise, const u8 *mac_addr,
        struct key_params *params)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_local *local = sdata->local;
 struct sta_info *sta = ((void*)0);
 const struct ieee80211_cipher_scheme *cs = ((void*)0);
 struct ieee80211_key *key;
 int err;

 if (!ieee80211_sdata_running(sdata))
  return -ENETDOWN;

 if (pairwise && params->mode == NL80211_KEY_SET_TX)
  return ieee80211_set_tx(sdata, mac_addr, key_idx);


 switch (params->cipher) {
 case 128:
 case 130:
 case 129:
  if (WARN_ON_ONCE(fips_enabled))
   return -EINVAL;
 case 134:
 case 133:
 case 138:
 case 137:
 case 136:
 case 135:
 case 132:
 case 131:
  break;
 default:
  cs = ieee80211_cs_get(local, params->cipher, sdata->vif.type);
  break;
 }

 key = ieee80211_key_alloc(params->cipher, key_idx, params->key_len,
      params->key, params->seq_len, params->seq,
      cs);
 if (IS_ERR(key))
  return PTR_ERR(key);

 if (pairwise)
  key->conf.flags |= IEEE80211_KEY_FLAG_PAIRWISE;

 if (params->mode == NL80211_KEY_NO_TX)
  key->conf.flags |= IEEE80211_KEY_FLAG_NO_AUTO_TX;

 mutex_lock(&local->sta_mtx);

 if (mac_addr) {
  sta = sta_info_get_bss(sdata, mac_addr);
  if (!sta || !test_sta_flag(sta, WLAN_STA_ASSOC)) {
   ieee80211_key_free_unused(key);
   err = -ENOENT;
   goto out_unlock;
  }
 }

 switch (sdata->vif.type) {
 case 142:
  if (sdata->u.mgd.mfp != IEEE80211_MFP_DISABLED)
   key->conf.flags |= IEEE80211_KEY_FLAG_RX_MGMT;
  break;
 case 151:
 case 150:

  if (sta && test_sta_flag(sta, WLAN_STA_MFP))
   key->conf.flags |= IEEE80211_KEY_FLAG_RX_MGMT;
  break;
 case 152:

  break;
 case 149:





 case 140:
 case 148:
 case 144:
 case 147:
 case 141:
 case 139:
 case 145:
 case 143:
 case 146:

  WARN_ON_ONCE(1);
  break;
 }

 if (sta)
  sta->cipher_scheme = cs;

 err = ieee80211_key_link(key, sdata, sta);

 out_unlock:
 mutex_unlock(&local->sta_mtx);

 return err;
}

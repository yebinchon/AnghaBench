
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vht_cap ;
typedef scalar_t__ u8 ;
struct TYPE_10__ {scalar_t__ vht_supported; scalar_t__ ht_supported; } ;
struct TYPE_9__ {TYPE_5__ vht_cap; TYPE_5__ ht_cap; } ;
struct sta_info {TYPE_4__ sta; int tdls_chandef; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_vht_cap {int dummy; } ;
struct ieee80211_supported_band {TYPE_5__ vht_cap; TYPE_5__ ht_cap; int band; } ;
struct TYPE_7__ {int chandef; } ;
struct TYPE_8__ {TYPE_2__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_3__ vif; struct ieee80211_local* local; } ;
struct ieee80211_sta_vht_cap {int cap; scalar_t__ vht_supported; scalar_t__ ht_supported; } ;
struct ieee80211_sta_ht_cap {int cap; scalar_t__ vht_supported; scalar_t__ ht_supported; } ;
struct TYPE_6__ {scalar_t__ queues; } ;
struct ieee80211_local {int sta_mtx; TYPE_1__ hw; } ;
struct ieee80211_ht_cap {int dummy; } ;
typedef int ht_cap ;


 int ARRAY_SIZE (scalar_t__ const*) ;
 int IEEE80211_HT_CAP_SM_PS_SHIFT ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 scalar_t__ IEEE80211_NUM_ACS ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int WLAN_HT_CAP_SM_PS_DISABLED ;
 scalar_t__ WLAN_PUB_ACTION_TDLS_DISCOVER_RES ;
 int WLAN_STA_TDLS_WIDER_BW ;
 scalar_t__ WLAN_TDLS_SETUP_REQUEST ;
 scalar_t__ WLAN_TDLS_SETUP_RESPONSE ;
 int ieee80211_add_ext_srates_ie (struct ieee80211_sub_if_data*,struct sk_buff*,int,int ) ;
 int ieee80211_add_srates_ie (struct ieee80211_sub_if_data*,struct sk_buff*,int,int ) ;
 int ieee80211_add_wmm_info_ie (scalar_t__*,int ) ;
 int ieee80211_apply_htcap_overrides (struct ieee80211_sub_if_data*,struct ieee80211_sta_vht_cap*) ;
 int ieee80211_apply_vhtcap_overrides (struct ieee80211_sub_if_data*,struct ieee80211_sta_vht_cap*) ;
 struct ieee80211_supported_band* ieee80211_get_sband (struct ieee80211_sub_if_data*) ;
 int ieee80211_ie_build_ht_cap (scalar_t__*,struct ieee80211_sta_vht_cap*,int) ;
 int ieee80211_ie_build_vht_cap (scalar_t__*,struct ieee80211_sta_vht_cap*,int) ;
 size_t ieee80211_ie_split (scalar_t__ const*,size_t,scalar_t__ const*,int ,size_t) ;
 int ieee80211_tdls_add_aid (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int ieee80211_tdls_add_bss_coex_ie (struct sk_buff*) ;
 int ieee80211_tdls_add_ext_capab (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int ieee80211_tdls_add_link_ie (struct ieee80211_sub_if_data*,struct sk_buff*,scalar_t__ const*,int) ;
 int ieee80211_tdls_add_oper_classes (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int ieee80211_tdls_add_supp_channels (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int ieee80211_tdls_chandef_vht_upgrade (struct ieee80211_sub_if_data*,struct sta_info*) ;
 int memcpy (struct ieee80211_sta_vht_cap*,TYPE_5__*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__* skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,scalar_t__ const*,size_t) ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,scalar_t__ const*) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static void
ieee80211_tdls_add_setup_start_ies(struct ieee80211_sub_if_data *sdata,
       struct sk_buff *skb, const u8 *peer,
       u8 action_code, bool initiator,
       const u8 *extra_ies, size_t extra_ies_len)
{
 struct ieee80211_supported_band *sband;
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_sta_ht_cap ht_cap;
 struct ieee80211_sta_vht_cap vht_cap;
 struct sta_info *sta = ((void*)0);
 size_t offset = 0, noffset;
 u8 *pos;

 sband = ieee80211_get_sband(sdata);
 if (!sband)
  return;

 ieee80211_add_srates_ie(sdata, skb, 0, sband->band);
 ieee80211_add_ext_srates_ie(sdata, skb, 0, sband->band);
 ieee80211_tdls_add_supp_channels(sdata, skb);


 if (extra_ies_len) {
  static const u8 before_ext_cap[] = {
   129,
   138,
   136,
   131,
   132,
  };
  noffset = ieee80211_ie_split(extra_ies, extra_ies_len,
          before_ext_cap,
          ARRAY_SIZE(before_ext_cap),
          offset);
  skb_put_data(skb, extra_ies + offset, noffset - offset);
  offset = noffset;
 }

 ieee80211_tdls_add_ext_capab(sdata, skb);


 if (local->hw.queues >= IEEE80211_NUM_ACS &&
     action_code != WLAN_PUB_ACTION_TDLS_DISCOVER_RES)
  ieee80211_add_wmm_info_ie(skb_put(skb, 9), 0);


 if (extra_ies_len) {
  static const u8 before_ht_cap[] = {
   129,
   138,
   136,
   131,
   132,
   137,
   133,
   135,
   128,
   130,
  };
  noffset = ieee80211_ie_split(extra_ies, extra_ies_len,
          before_ht_cap,
          ARRAY_SIZE(before_ht_cap),
          offset);
  skb_put_data(skb, extra_ies + offset, noffset - offset);
  offset = noffset;
 }

 mutex_lock(&local->sta_mtx);


 if (action_code == WLAN_TDLS_SETUP_RESPONSE) {
  sta = sta_info_get(sdata, peer);
  if (WARN_ON_ONCE(!sta)) {
   mutex_unlock(&local->sta_mtx);
   return;
  }

  sta->tdls_chandef = sdata->vif.bss_conf.chandef;
 }

 ieee80211_tdls_add_oper_classes(sdata, skb);






 memcpy(&ht_cap, &sband->ht_cap, sizeof(ht_cap));

 if ((action_code == WLAN_TDLS_SETUP_REQUEST ||
      action_code == WLAN_PUB_ACTION_TDLS_DISCOVER_RES) &&
     ht_cap.ht_supported) {
  ieee80211_apply_htcap_overrides(sdata, &ht_cap);


  ht_cap.cap |= WLAN_HT_CAP_SM_PS_DISABLED
    << IEEE80211_HT_CAP_SM_PS_SHIFT;

  pos = skb_put(skb, sizeof(struct ieee80211_ht_cap) + 2);
  ieee80211_ie_build_ht_cap(pos, &ht_cap, ht_cap.cap);
 } else if (action_code == WLAN_TDLS_SETUP_RESPONSE &&
     ht_cap.ht_supported && sta->sta.ht_cap.ht_supported) {

  memcpy(&ht_cap, &sta->sta.ht_cap, sizeof(ht_cap));

  pos = skb_put(skb, sizeof(struct ieee80211_ht_cap) + 2);
  ieee80211_ie_build_ht_cap(pos, &ht_cap, ht_cap.cap);
 }

 if (ht_cap.ht_supported &&
     (ht_cap.cap & IEEE80211_HT_CAP_SUP_WIDTH_20_40))
  ieee80211_tdls_add_bss_coex_ie(skb);

 ieee80211_tdls_add_link_ie(sdata, skb, peer, initiator);


 if (extra_ies_len) {
  static const u8 before_vht_cap[] = {
   129,
   138,
   136,
   131,
   132,
   137,
   133,
   135,
   128,
   130,
   134,
  };
  noffset = ieee80211_ie_split(extra_ies, extra_ies_len,
          before_vht_cap,
          ARRAY_SIZE(before_vht_cap),
          offset);
  skb_put_data(skb, extra_ies + offset, noffset - offset);
  offset = noffset;
 }


 memcpy(&vht_cap, &sband->vht_cap, sizeof(vht_cap));
 if ((action_code == WLAN_TDLS_SETUP_REQUEST ||
      action_code == WLAN_PUB_ACTION_TDLS_DISCOVER_RES) &&
     vht_cap.vht_supported) {
  ieee80211_apply_vhtcap_overrides(sdata, &vht_cap);


  if (action_code == WLAN_TDLS_SETUP_REQUEST)
   ieee80211_tdls_add_aid(sdata, skb);

  pos = skb_put(skb, sizeof(struct ieee80211_vht_cap) + 2);
  ieee80211_ie_build_vht_cap(pos, &vht_cap, vht_cap.cap);
 } else if (action_code == WLAN_TDLS_SETUP_RESPONSE &&
     vht_cap.vht_supported && sta->sta.vht_cap.vht_supported) {

  memcpy(&vht_cap, &sta->sta.vht_cap, sizeof(vht_cap));


  ieee80211_tdls_add_aid(sdata, skb);

  pos = skb_put(skb, sizeof(struct ieee80211_vht_cap) + 2);
  ieee80211_ie_build_vht_cap(pos, &vht_cap, vht_cap.cap);





  if (test_sta_flag(sta, WLAN_STA_TDLS_WIDER_BW))
   ieee80211_tdls_chandef_vht_upgrade(sdata, sta);
 }

 mutex_unlock(&local->sta_mtx);


 if (extra_ies_len) {
  noffset = extra_ies_len;
  skb_put_data(skb, extra_ies + offset, noffset - offset);
 }

}

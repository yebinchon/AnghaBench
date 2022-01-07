
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_13__ {scalar_t__ vht_supported; } ;
struct TYPE_14__ {scalar_t__ ht_supported; } ;
struct TYPE_12__ {TYPE_6__ vht_cap; TYPE_7__ ht_cap; scalar_t__ wme; } ;
struct sta_info {int tdls_chandef; TYPE_5__ sta; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_vht_operation {int dummy; } ;
struct ieee80211_supported_band {scalar_t__ band; } ;
struct TYPE_10__ {int chandef; } ;
struct TYPE_11__ {TYPE_3__ bss_conf; } ;
struct ieee80211_if_managed {int const* bssid; } ;
struct TYPE_8__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_4__ vif; TYPE_1__ u; struct ieee80211_local* local; } ;
struct TYPE_9__ {scalar_t__ queues; } ;
struct ieee80211_local {int sta_mtx; TYPE_2__ hw; } ;
struct ieee80211_ht_operation {int dummy; } ;


 int ARRAY_SIZE (int const*) ;
 int IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT ;
 int IEEE80211_HT_OP_MODE_NON_HT_STA_PRSNT ;
 int IEEE80211_HT_OP_MODE_PROTECTION_NONHT_MIXED ;
 scalar_t__ IEEE80211_NUM_ACS ;
 scalar_t__ NL80211_BAND_2GHZ ;
 scalar_t__ WARN_ON_ONCE (int) ;




 int WLAN_STA_TDLS_WIDER_BW ;
 struct ieee80211_supported_band* ieee80211_get_sband (struct ieee80211_sub_if_data*) ;
 int ieee80211_ie_build_ht_oper (int *,TYPE_7__*,int *,int,int) ;
 int ieee80211_ie_build_vht_oper (int *,TYPE_6__*,int *) ;
 size_t ieee80211_ie_split (int const*,size_t,int const*,int ,size_t) ;
 int ieee80211_tdls_add_link_ie (struct ieee80211_sub_if_data*,struct sk_buff*,int const*,int) ;
 int ieee80211_tdls_add_wmm_param_ie (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int ieee80211_tdls_chandef_vht_upgrade (struct ieee80211_sub_if_data*,struct sta_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,int const*,size_t) ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int const*) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static void
ieee80211_tdls_add_setup_cfm_ies(struct ieee80211_sub_if_data *sdata,
     struct sk_buff *skb, const u8 *peer,
     bool initiator, const u8 *extra_ies,
     size_t extra_ies_len)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 size_t offset = 0, noffset;
 struct sta_info *sta, *ap_sta;
 struct ieee80211_supported_band *sband;
 u8 *pos;

 sband = ieee80211_get_sband(sdata);
 if (!sband)
  return;

 mutex_lock(&local->sta_mtx);

 sta = sta_info_get(sdata, peer);
 ap_sta = sta_info_get(sdata, ifmgd->bssid);
 if (WARN_ON_ONCE(!sta || !ap_sta)) {
  mutex_unlock(&local->sta_mtx);
  return;
 }

 sta->tdls_chandef = sdata->vif.bss_conf.chandef;


 if (extra_ies_len) {
  static const u8 before_qos[] = {
   129,
  };
  noffset = ieee80211_ie_split(extra_ies, extra_ies_len,
          before_qos,
          ARRAY_SIZE(before_qos),
          offset);
  skb_put_data(skb, extra_ies + offset, noffset - offset);
  offset = noffset;
 }


 if (local->hw.queues >= IEEE80211_NUM_ACS && sta->sta.wme)
  ieee80211_tdls_add_wmm_param_ie(sdata, skb);


 if (extra_ies_len) {
  static const u8 before_ht_op[] = {
   129,
   130,
   131,
   128,
  };
  noffset = ieee80211_ie_split(extra_ies, extra_ies_len,
          before_ht_op,
          ARRAY_SIZE(before_ht_op),
          offset);
  skb_put_data(skb, extra_ies + offset, noffset - offset);
  offset = noffset;
 }





 if (!ap_sta->sta.ht_cap.ht_supported && sta->sta.ht_cap.ht_supported) {
  u16 prot = IEEE80211_HT_OP_MODE_PROTECTION_NONHT_MIXED |
      IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT |
      IEEE80211_HT_OP_MODE_NON_HT_STA_PRSNT;

  pos = skb_put(skb, 2 + sizeof(struct ieee80211_ht_operation));
  ieee80211_ie_build_ht_oper(pos, &sta->sta.ht_cap,
        &sdata->vif.bss_conf.chandef, prot,
        1);
 }

 ieee80211_tdls_add_link_ie(sdata, skb, peer, initiator);


 if (sband->band != NL80211_BAND_2GHZ &&
     sta->sta.vht_cap.vht_supported) {




  if (test_sta_flag(sta, WLAN_STA_TDLS_WIDER_BW))
   ieee80211_tdls_chandef_vht_upgrade(sdata, sta);

  pos = skb_put(skb, 2 + sizeof(struct ieee80211_vht_operation));
  ieee80211_ie_build_vht_oper(pos, &sta->sta.vht_cap,
         &sta->tdls_chandef);
 }

 mutex_unlock(&local->sta_mtx);


 if (extra_ies_len) {
  noffset = extra_ies_len;
  skb_put_data(skb, extra_ies + offset, noffset - offset);
 }
}

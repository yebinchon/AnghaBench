
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef struct ieee80211_vht_operation {int cap; int basic_mcs_set; int ht_supported; } const ieee80211_vht_operation ;
struct TYPE_8__ {int vht_supported; } ;
struct ieee80211_supported_band {TYPE_2__ vht_cap; int ht_cap; } ;
struct cfg80211_chan_def {scalar_t__ width; scalar_t__ center_freq1; struct ieee80211_channel* chan; } ;
struct TYPE_9__ {struct cfg80211_chan_def chandef; } ;
struct TYPE_10__ {TYPE_3__ bss_conf; } ;
struct ieee80211_if_managed {scalar_t__ flags; } ;
struct TYPE_7__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_5__* local; TYPE_4__ vif; TYPE_1__ u; } ;
typedef struct ieee80211_sta_ht_cap {int cap; int basic_mcs_set; int ht_supported; } const ieee80211_sta_ht_cap ;
struct ieee80211_ht_operation {int primary_chan; } ;
struct ieee80211_he_operation {int * optional; int he_oper_params; } ;
struct ieee80211_channel {scalar_t__ center_freq; int band; } ;
typedef int sta_ht_cap ;
struct TYPE_12__ {int wiphy; } ;
struct TYPE_11__ {TYPE_6__ hw; } ;


 int IEEE80211_CHAN_DISABLED ;
 int IEEE80211_HE_OPERATION_VHT_OPER_INFO ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 scalar_t__ IEEE80211_STA_DISABLE_40MHZ ;
 scalar_t__ IEEE80211_STA_DISABLE_HE ;
 scalar_t__ IEEE80211_STA_DISABLE_HT ;
 scalar_t__ IEEE80211_STA_DISABLE_VHT ;
 scalar_t__ NL80211_CHAN_WIDTH_20 ;
 scalar_t__ NL80211_CHAN_WIDTH_20_NOHT ;
 scalar_t__ WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int cfg80211_chandef_compatible (struct cfg80211_chan_def*,struct cfg80211_chan_def*) ;
 scalar_t__ cfg80211_chandef_identical (struct cfg80211_chan_def*,struct cfg80211_chan_def*) ;
 int cfg80211_chandef_usable (int ,struct cfg80211_chan_def*,int ) ;
 int cfg80211_chandef_valid (struct cfg80211_chan_def*) ;
 int cpu_to_le16 (int ) ;
 int ieee80211_apply_htcap_overrides (struct ieee80211_sub_if_data*,struct ieee80211_vht_operation const*) ;
 scalar_t__ ieee80211_chandef_downgrade (struct cfg80211_chan_def*) ;
 int ieee80211_chandef_ht_oper (struct ieee80211_ht_operation const*,struct cfg80211_chan_def*) ;
 int ieee80211_chandef_vht_oper (TYPE_6__*,struct ieee80211_vht_operation const*,struct ieee80211_ht_operation const*,struct cfg80211_chan_def*) ;
 scalar_t__ ieee80211_channel_to_frequency (int ,int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (struct ieee80211_vht_operation const*,int *,int) ;
 int memset (struct cfg80211_chan_def*,int ,int) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,...) ;

__attribute__((used)) static u32
ieee80211_determine_chantype(struct ieee80211_sub_if_data *sdata,
        struct ieee80211_supported_band *sband,
        struct ieee80211_channel *channel,
        const struct ieee80211_ht_operation *ht_oper,
        const struct ieee80211_vht_operation *vht_oper,
        const struct ieee80211_he_operation *he_oper,
        struct cfg80211_chan_def *chandef, bool tracking)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct cfg80211_chan_def vht_chandef;
 struct ieee80211_sta_ht_cap sta_ht_cap;
 u32 ht_cfreq, ret;

 memcpy(&sta_ht_cap, &sband->ht_cap, sizeof(sta_ht_cap));
 ieee80211_apply_htcap_overrides(sdata, &sta_ht_cap);

 memset(chandef, 0, sizeof(struct cfg80211_chan_def));
 chandef->chan = channel;
 chandef->width = NL80211_CHAN_WIDTH_20_NOHT;
 chandef->center_freq1 = channel->center_freq;

 if (!ht_oper || !sta_ht_cap.ht_supported) {
  ret = IEEE80211_STA_DISABLE_HT | IEEE80211_STA_DISABLE_VHT;
  goto out;
 }

 chandef->width = NL80211_CHAN_WIDTH_20;

 ht_cfreq = ieee80211_channel_to_frequency(ht_oper->primary_chan,
        channel->band);

 if (!tracking && channel->center_freq != ht_cfreq) {







  sdata_info(sdata,
      "Wrong control channel: center-freq: %d ht-cfreq: %d ht->primary_chan: %d band: %d - Disabling HT\n",
      channel->center_freq, ht_cfreq,
      ht_oper->primary_chan, channel->band);
  ret = IEEE80211_STA_DISABLE_HT | IEEE80211_STA_DISABLE_VHT;
  goto out;
 }


 if (sta_ht_cap.cap & IEEE80211_HT_CAP_SUP_WIDTH_20_40) {
  ieee80211_chandef_ht_oper(ht_oper, chandef);
 } else {

  ret = IEEE80211_STA_DISABLE_VHT;

  ret |= IEEE80211_STA_DISABLE_40MHZ;
  goto out;
 }

 if (!vht_oper || !sband->vht_cap.vht_supported) {
  ret = IEEE80211_STA_DISABLE_VHT;
  goto out;
 }

 vht_chandef = *chandef;
 if (!(ifmgd->flags & IEEE80211_STA_DISABLE_HE) && he_oper &&
     (le32_to_cpu(he_oper->he_oper_params) &
      IEEE80211_HE_OPERATION_VHT_OPER_INFO)) {
  struct ieee80211_vht_operation he_oper_vht_cap;





  memcpy(&he_oper_vht_cap, he_oper->optional, 3);
  he_oper_vht_cap.basic_mcs_set = cpu_to_le16(0);

  if (!ieee80211_chandef_vht_oper(&sdata->local->hw,
      &he_oper_vht_cap, ht_oper,
      &vht_chandef)) {
   if (!(ifmgd->flags & IEEE80211_STA_DISABLE_HE))
    sdata_info(sdata,
        "HE AP VHT information is invalid, disable HE\n");
   ret = IEEE80211_STA_DISABLE_HE;
   goto out;
  }
 } else if (!ieee80211_chandef_vht_oper(&sdata->local->hw, vht_oper,
            ht_oper, &vht_chandef)) {
  if (!(ifmgd->flags & IEEE80211_STA_DISABLE_VHT))
   sdata_info(sdata,
       "AP VHT information is invalid, disable VHT\n");
  ret = IEEE80211_STA_DISABLE_VHT;
  goto out;
 }

 if (!cfg80211_chandef_valid(&vht_chandef)) {
  if (!(ifmgd->flags & IEEE80211_STA_DISABLE_VHT))
   sdata_info(sdata,
       "AP VHT information is invalid, disable VHT\n");
  ret = IEEE80211_STA_DISABLE_VHT;
  goto out;
 }

 if (cfg80211_chandef_identical(chandef, &vht_chandef)) {
  ret = 0;
  goto out;
 }

 if (!cfg80211_chandef_compatible(chandef, &vht_chandef)) {
  if (!(ifmgd->flags & IEEE80211_STA_DISABLE_VHT))
   sdata_info(sdata,
       "AP VHT information doesn't match HT, disable VHT\n");
  ret = IEEE80211_STA_DISABLE_VHT;
  goto out;
 }

 *chandef = vht_chandef;

 ret = 0;

out:
 if (tracking &&
     cfg80211_chandef_identical(chandef, &sdata->vif.bss_conf.chandef))
  return ret;


 if (ret & IEEE80211_STA_DISABLE_VHT)
  vht_chandef = *chandef;
 while (!cfg80211_chandef_usable(sdata->local->hw.wiphy, chandef,
     tracking ? 0 :
         IEEE80211_CHAN_DISABLED)) {
  if (WARN_ON(chandef->width == NL80211_CHAN_WIDTH_20_NOHT)) {
   ret = IEEE80211_STA_DISABLE_HT |
         IEEE80211_STA_DISABLE_VHT;
   break;
  }

  ret |= ieee80211_chandef_downgrade(chandef);
 }

 if (chandef->width != vht_chandef.width && !tracking)
  sdata_info(sdata,
      "capabilities/regulatory prevented using AP HT/VHT configuration, downgraded\n");

 WARN_ON_ONCE(!cfg80211_chandef_valid(chandef));
 return ret;
}


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
typedef int u32 ;
struct wiphy {struct ieee80211_supported_band** bands; } ;
struct net_device {int ieee80211_ptr; } ;
struct ieee80211_supported_band {int dummy; } ;
struct TYPE_7__ {TYPE_1__* chan; } ;
struct TYPE_8__ {int basic_rates; TYPE_2__ chandef; } ;
struct TYPE_9__ {TYPE_3__ bss_conf; int chanctx_conf; } ;
struct ieee80211_sub_if_data {int* rc_rateidx_mask; int** rc_rateidx_mcs_mask; int** rc_rateidx_vht_mcs_mask; int* rc_has_mcs_mask; int* rc_has_vht_mcs_mask; TYPE_4__ vif; } ;
struct ieee80211_local {int hw; } ;
struct cfg80211_bitrate_mask {TYPE_5__* control; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_10__ {int legacy; int vht_mcs; int ht_mcs; } ;
struct TYPE_6__ {int band; } ;


 int EINVAL ;
 int ENETDOWN ;
 int HAS_RATE_CONTROL ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int IEEE80211_HT_MCS_MASK_LEN ;
 int NL80211_VHT_NSS_MAX ;
 int NUM_NL80211_BANDS ;
 int drv_set_bitrate_mask (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct cfg80211_bitrate_mask const*) ;
 scalar_t__ ieee80211_hw_check (int *,int ) ;
 int ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;
 int memcpy (int*,int ,int) ;
 scalar_t__ rcu_access_pointer (int ) ;
 struct ieee80211_local* wdev_priv (int ) ;

__attribute__((used)) static int ieee80211_set_bitrate_mask(struct wiphy *wiphy,
          struct net_device *dev,
          const u8 *addr,
          const struct cfg80211_bitrate_mask *mask)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_local *local = wdev_priv(dev->ieee80211_ptr);
 int i, ret;

 if (!ieee80211_sdata_running(sdata))
  return -ENETDOWN;







 if (rcu_access_pointer(sdata->vif.chanctx_conf) &&
     sdata->vif.bss_conf.chandef.chan) {
  u32 basic_rates = sdata->vif.bss_conf.basic_rates;
  enum nl80211_band band = sdata->vif.bss_conf.chandef.chan->band;

  if (!(mask->control[band].legacy & basic_rates))
   return -EINVAL;
 }

 if (ieee80211_hw_check(&local->hw, HAS_RATE_CONTROL)) {
  ret = drv_set_bitrate_mask(local, sdata, mask);
  if (ret)
   return ret;
 }

 for (i = 0; i < NUM_NL80211_BANDS; i++) {
  struct ieee80211_supported_band *sband = wiphy->bands[i];
  int j;

  sdata->rc_rateidx_mask[i] = mask->control[i].legacy;
  memcpy(sdata->rc_rateidx_mcs_mask[i], mask->control[i].ht_mcs,
         sizeof(mask->control[i].ht_mcs));
  memcpy(sdata->rc_rateidx_vht_mcs_mask[i],
         mask->control[i].vht_mcs,
         sizeof(mask->control[i].vht_mcs));

  sdata->rc_has_mcs_mask[i] = 0;
  sdata->rc_has_vht_mcs_mask[i] = 0;
  if (!sband)
   continue;

  for (j = 0; j < IEEE80211_HT_MCS_MASK_LEN; j++) {
   if (~sdata->rc_rateidx_mcs_mask[i][j]) {
    sdata->rc_has_mcs_mask[i] = 1;
    break;
   }
  }

  for (j = 0; j < NL80211_VHT_NSS_MAX; j++) {
   if (~sdata->rc_rateidx_vht_mcs_mask[i][j]) {
    sdata->rc_has_vht_mcs_mask[i] = 1;
    break;
   }
  }
 }

 return 0;
}

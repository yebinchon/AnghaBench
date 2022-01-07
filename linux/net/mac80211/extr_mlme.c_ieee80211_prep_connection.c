
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


typedef void* u32 ;
struct TYPE_10__ {void** supp_rates; } ;
struct sta_info {TYPE_3__ sta; } ;
struct ieee80211_supported_band {int dummy; } ;
struct TYPE_12__ {int sync_dtim_count; int sync_device_ts; int sync_tsf; int beacon_int; void* basic_rates; } ;
struct TYPE_13__ {TYPE_5__ bss_conf; } ;
struct ieee80211_if_managed {int bssid; int assoc_data; int auth_data; } ;
struct TYPE_8__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_6__ vif; struct ieee80211_local* local; int flags; TYPE_1__ u; } ;
struct TYPE_14__ {TYPE_2__* wiphy; } ;
struct ieee80211_local {scalar_t__ scanning; TYPE_7__ hw; scalar_t__ in_reconfig; } ;
struct ieee80211_bss {int device_ts_presp; int device_ts_beacon; int supp_rates_len; int supp_rates; } ;
struct cfg80211_bss_ies {int tsf; } ;
struct cfg80211_bss {int bssid; int proberesp_ies; int beacon_ies; int beacon_interval; TYPE_4__* channel; scalar_t__ priv; } ;
struct TYPE_11__ {size_t band; } ;
struct TYPE_9__ {struct ieee80211_supported_band** bands; } ;


 void* BIT (int) ;
 int BSS_CHANGED_BASIC_RATES ;
 int BSS_CHANGED_BEACON_INT ;
 int BSS_CHANGED_BSSID ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int IEEE80211_SDATA_OPERATING_GMODE ;
 int IEEE80211_STA_AUTH ;
 int INT_MAX ;
 size_t NL80211_BAND_2GHZ ;
 int TIMING_BEACON_ONLY ;
 scalar_t__ WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int ether_addr_equal (int ,int ) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_get_dtim (struct cfg80211_bss_ies const*,int *,int *) ;
 int ieee80211_get_rates (struct ieee80211_supported_band*,int ,int ,void**,void**,int*,int*,int*,int) ;
 int ieee80211_hw_check (TYPE_7__*,int ) ;
 int ieee80211_prep_channel (struct ieee80211_sub_if_data*,struct cfg80211_bss*) ;
 int ieee80211_scan_cancel (struct ieee80211_local*) ;
 int ieee80211_vif_get_shift (TYPE_6__*) ;
 int memcpy (int ,int ,int ) ;
 struct cfg80211_bss_ies* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,...) ;
 struct sta_info* sta_info_alloc (struct ieee80211_sub_if_data*,int ,int ) ;
 int sta_info_free (struct ieee80211_local*,struct sta_info*) ;
 int sta_info_get (struct ieee80211_sub_if_data*,int ) ;
 int sta_info_insert (struct sta_info*) ;
 int sta_info_pre_move_state (struct sta_info*,int ) ;

__attribute__((used)) static int ieee80211_prep_connection(struct ieee80211_sub_if_data *sdata,
         struct cfg80211_bss *cbss, bool assoc,
         bool override)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct ieee80211_bss *bss = (void *)cbss->priv;
 struct sta_info *new_sta = ((void*)0);
 struct ieee80211_supported_band *sband;
 bool have_sta = 0;
 int err;

 sband = local->hw.wiphy->bands[cbss->channel->band];

 if (WARN_ON(!ifmgd->auth_data && !ifmgd->assoc_data))
  return -EINVAL;


 if (local->in_reconfig)
  return -EBUSY;

 if (assoc) {
  rcu_read_lock();
  have_sta = sta_info_get(sdata, cbss->bssid);
  rcu_read_unlock();
 }

 if (!have_sta) {
  new_sta = sta_info_alloc(sdata, cbss->bssid, GFP_KERNEL);
  if (!new_sta)
   return -ENOMEM;
 }
 if (new_sta) {
  u32 rates = 0, basic_rates = 0;
  bool have_higher_than_11mbit;
  int min_rate = INT_MAX, min_rate_index = -1;
  const struct cfg80211_bss_ies *ies;
  int shift = ieee80211_vif_get_shift(&sdata->vif);

  ieee80211_get_rates(sband, bss->supp_rates,
        bss->supp_rates_len,
        &rates, &basic_rates,
        &have_higher_than_11mbit,
        &min_rate, &min_rate_index,
        shift);
  if (!basic_rates && min_rate_index >= 0) {
   sdata_info(sdata,
       "No basic rates, using min rate instead\n");
   basic_rates = BIT(min_rate_index);
  }

  if (rates)
   new_sta->sta.supp_rates[cbss->channel->band] = rates;
  else
   sdata_info(sdata,
       "No rates found, keeping mandatory only\n");

  sdata->vif.bss_conf.basic_rates = basic_rates;


  if (cbss->channel->band == NL80211_BAND_2GHZ &&
      have_higher_than_11mbit)
   sdata->flags |= IEEE80211_SDATA_OPERATING_GMODE;
  else
   sdata->flags &= ~IEEE80211_SDATA_OPERATING_GMODE;

  memcpy(ifmgd->bssid, cbss->bssid, ETH_ALEN);


  sdata->vif.bss_conf.beacon_int = cbss->beacon_interval;
  rcu_read_lock();
  ies = rcu_dereference(cbss->beacon_ies);
  if (ies) {
   sdata->vif.bss_conf.sync_tsf = ies->tsf;
   sdata->vif.bss_conf.sync_device_ts =
    bss->device_ts_beacon;

   ieee80211_get_dtim(ies,
        &sdata->vif.bss_conf.sync_dtim_count,
        ((void*)0));
  } else if (!ieee80211_hw_check(&sdata->local->hw,
            TIMING_BEACON_ONLY)) {
   ies = rcu_dereference(cbss->proberesp_ies);

   sdata->vif.bss_conf.sync_tsf = ies->tsf;
   sdata->vif.bss_conf.sync_device_ts =
    bss->device_ts_presp;
   sdata->vif.bss_conf.sync_dtim_count = 0;
  } else {
   sdata->vif.bss_conf.sync_tsf = 0;
   sdata->vif.bss_conf.sync_device_ts = 0;
   sdata->vif.bss_conf.sync_dtim_count = 0;
  }
  rcu_read_unlock();
 }

 if (new_sta || override) {
  err = ieee80211_prep_channel(sdata, cbss);
  if (err) {
   if (new_sta)
    sta_info_free(local, new_sta);
   return -EINVAL;
  }
 }

 if (new_sta) {




  ieee80211_bss_info_change_notify(sdata,
   BSS_CHANGED_BSSID | BSS_CHANGED_BASIC_RATES |
   BSS_CHANGED_BEACON_INT);

  if (assoc)
   sta_info_pre_move_state(new_sta, IEEE80211_STA_AUTH);

  err = sta_info_insert(new_sta);
  new_sta = ((void*)0);
  if (err) {
   sdata_info(sdata,
       "failed to insert STA entry for the AP (error %d)\n",
       err);
   return err;
  }
 } else
  WARN_ON_ONCE(!ether_addr_equal(ifmgd->bssid, cbss->bssid));


 if (local->scanning)
  ieee80211_scan_cancel(local);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int chandef; } ;
struct TYPE_4__ {int csa_active; TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {int csa_block_tx; int csa_chandef; int dev; TYPE_2__ vif; scalar_t__ reserved_ready; scalar_t__ reserved_chanctx; struct ieee80211_local* local; } ;
struct ieee80211_local {int chanctx_mtx; int mtx; } ;


 int EINVAL ;
 int IEEE80211_QUEUE_STOP_REASON_CSA ;
 int cfg80211_ch_switch_notify (int ,int *) ;
 int cfg80211_chandef_identical (int *,int *) ;
 int drv_post_channel_switch (struct ieee80211_sub_if_data*) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_set_after_csa_beacon (struct ieee80211_sub_if_data*,int *) ;
 int ieee80211_vif_use_reserved_context (struct ieee80211_sub_if_data*) ;
 int ieee80211_wake_vif_queues (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ) ;
 int lockdep_assert_held (int *) ;
 int sdata_assert_lock (struct ieee80211_sub_if_data*) ;

__attribute__((used)) static int __ieee80211_csa_finalize(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_local *local = sdata->local;
 u32 changed = 0;
 int err;

 sdata_assert_lock(sdata);
 lockdep_assert_held(&local->mtx);
 lockdep_assert_held(&local->chanctx_mtx);
 if (sdata->reserved_chanctx) {





  if (sdata->reserved_ready)
   return 0;

  return ieee80211_vif_use_reserved_context(sdata);
 }

 if (!cfg80211_chandef_identical(&sdata->vif.bss_conf.chandef,
     &sdata->csa_chandef))
  return -EINVAL;

 sdata->vif.csa_active = 0;

 err = ieee80211_set_after_csa_beacon(sdata, &changed);
 if (err)
  return err;

 ieee80211_bss_info_change_notify(sdata, changed);

 if (sdata->csa_block_tx) {
  ieee80211_wake_vif_queues(local, sdata,
       IEEE80211_QUEUE_STOP_REASON_CSA);
  sdata->csa_block_tx = 0;
 }

 err = drv_post_channel_switch(sdata);
 if (err)
  return err;

 cfg80211_ch_switch_notify(sdata->dev, &sdata->csa_chandef);

 return 0;
}

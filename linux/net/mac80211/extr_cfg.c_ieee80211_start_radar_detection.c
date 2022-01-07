
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {int dfs_cac_timer_work; struct ieee80211_local* local; int needed_rx_chains; int smps_mode; } ;
struct ieee80211_local {int mtx; int hw; int rx_chains; scalar_t__ scanning; int roc_list; } ;
struct cfg80211_chan_def {int dummy; } ;


 int EBUSY ;
 int IEEE80211_CHANCTX_SHARED ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int IEEE80211_SMPS_OFF ;
 int ieee80211_queue_delayed_work (int *,int *,int ) ;
 int ieee80211_vif_use_channel (struct ieee80211_sub_if_data*,struct cfg80211_chan_def*,int ) ;
 int list_empty (int *) ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ieee80211_start_radar_detection(struct wiphy *wiphy,
        struct net_device *dev,
        struct cfg80211_chan_def *chandef,
        u32 cac_time_ms)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_local *local = sdata->local;
 int err;

 mutex_lock(&local->mtx);
 if (!list_empty(&local->roc_list) || local->scanning) {
  err = -EBUSY;
  goto out_unlock;
 }


 sdata->smps_mode = IEEE80211_SMPS_OFF;
 sdata->needed_rx_chains = local->rx_chains;

 err = ieee80211_vif_use_channel(sdata, chandef,
     IEEE80211_CHANCTX_SHARED);
 if (err)
  goto out_unlock;

 ieee80211_queue_delayed_work(&sdata->local->hw,
         &sdata->dfs_cac_timer_work,
         msecs_to_jiffies(cac_time_ms));

 out_unlock:
 mutex_unlock(&local->mtx);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int csa_active; } ;
struct ieee80211_sub_if_data {int csa_block_tx; TYPE_1__ vif; struct ieee80211_local* local; } ;
struct ieee80211_local {int mtx; int chanctx_mtx; TYPE_2__* ops; } ;
struct TYPE_4__ {int abort_channel_switch; } ;


 int IEEE80211_QUEUE_STOP_REASON_CSA ;
 int drv_abort_channel_switch (struct ieee80211_sub_if_data*) ;
 int ieee80211_vif_unreserve_chanctx (struct ieee80211_sub_if_data*) ;
 int ieee80211_wake_vif_queues (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
ieee80211_sta_abort_chanswitch(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_local *local = sdata->local;

 if (!local->ops->abort_channel_switch)
  return;

 mutex_lock(&local->mtx);

 mutex_lock(&local->chanctx_mtx);
 ieee80211_vif_unreserve_chanctx(sdata);
 mutex_unlock(&local->chanctx_mtx);

 if (sdata->csa_block_tx)
  ieee80211_wake_vif_queues(local, sdata,
       IEEE80211_QUEUE_STOP_REASON_CSA);

 sdata->csa_block_tx = 0;
 sdata->vif.csa_active = 0;

 mutex_unlock(&local->mtx);

 drv_abort_channel_switch(sdata);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_sta {int dummy; } ;
struct sta_info {struct ieee80211_sta sta; TYPE_3__* sdata; int rate_ctrl_lock; void* rate_ctrl_priv; } ;
struct rate_control_ref {int priv; TYPE_2__* ops; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_local {struct rate_control_ref* rate_ctrl; } ;
struct ieee80211_chanctx_conf {int def; } ;
struct TYPE_4__ {int chanctx_conf; } ;
struct TYPE_6__ {TYPE_1__ vif; } ;
struct TYPE_5__ {int (* rate_update ) (int ,struct ieee80211_supported_band*,int *,struct ieee80211_sta*,void*,int ) ;} ;


 scalar_t__ WARN_ON (int) ;
 int drv_sta_rc_update (struct ieee80211_local*,TYPE_3__*,struct ieee80211_sta*,int ) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (int ,struct ieee80211_supported_band*,int *,struct ieee80211_sta*,void*,int ) ;

void rate_control_rate_update(struct ieee80211_local *local,
        struct ieee80211_supported_band *sband,
        struct sta_info *sta, u32 changed)
{
 struct rate_control_ref *ref = local->rate_ctrl;
 struct ieee80211_sta *ista = &sta->sta;
 void *priv_sta = sta->rate_ctrl_priv;
 struct ieee80211_chanctx_conf *chanctx_conf;

 if (ref && ref->ops->rate_update) {
  rcu_read_lock();

  chanctx_conf = rcu_dereference(sta->sdata->vif.chanctx_conf);
  if (WARN_ON(!chanctx_conf)) {
   rcu_read_unlock();
   return;
  }

  spin_lock_bh(&sta->rate_ctrl_lock);
  ref->ops->rate_update(ref->priv, sband, &chanctx_conf->def,
          ista, priv_sta, changed);
  spin_unlock_bh(&sta->rate_ctrl_lock);
  rcu_read_unlock();
 }
 drv_sta_rc_update(local, sta->sdata, &sta->sta, changed);
}

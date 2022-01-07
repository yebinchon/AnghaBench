
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int radar_enabled; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;
struct ieee80211_local {TYPE_2__ hw; int use_chanctx; int mtx; int chanctx_mtx; } ;
struct TYPE_6__ {int radar_enabled; } ;
struct ieee80211_chanctx {TYPE_3__ conf; } ;


 int IEEE80211_CHANCTX_CHANGE_RADAR ;
 int IEEE80211_CONF_CHANGE_CHANNEL ;
 int drv_change_chanctx (struct ieee80211_local*,struct ieee80211_chanctx*,int ) ;
 int ieee80211_chanctx_radar_required (struct ieee80211_local*,struct ieee80211_chanctx*) ;
 int ieee80211_hw_config (struct ieee80211_local*,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void ieee80211_recalc_radar_chanctx(struct ieee80211_local *local,
        struct ieee80211_chanctx *chanctx)
{
 bool radar_enabled;

 lockdep_assert_held(&local->chanctx_mtx);

 lockdep_assert_held(&local->mtx);

 radar_enabled = ieee80211_chanctx_radar_required(local, chanctx);

 if (radar_enabled == chanctx->conf.radar_enabled)
  return;

 chanctx->conf.radar_enabled = radar_enabled;

 if (!local->use_chanctx) {
  local->hw.conf.radar_enabled = chanctx->conf.radar_enabled;
  ieee80211_hw_config(local, IEEE80211_CONF_CHANGE_CHANNEL);
 }

 drv_change_chanctx(local, chanctx, IEEE80211_CHANCTX_CHANGE_RADAR);
}

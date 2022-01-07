
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int radar_enabled; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;
struct ieee80211_local {int _oper_chandef; int use_chanctx; TYPE_2__ hw; int chanctx_mtx; int mtx; } ;
struct TYPE_6__ {int def; int radar_enabled; } ;
struct ieee80211_chanctx {TYPE_3__ conf; } ;


 scalar_t__ IEEE80211_CONF_CHANGE_CHANNEL ;
 int drv_add_chanctx (struct ieee80211_local*,struct ieee80211_chanctx*) ;
 int ieee80211_hw_config (struct ieee80211_local*,scalar_t__) ;
 scalar_t__ ieee80211_idle_off (struct ieee80211_local*) ;
 int ieee80211_recalc_idle (struct ieee80211_local*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int ieee80211_add_chanctx(struct ieee80211_local *local,
     struct ieee80211_chanctx *ctx)
{
 u32 changed;
 int err;

 lockdep_assert_held(&local->mtx);
 lockdep_assert_held(&local->chanctx_mtx);

 if (!local->use_chanctx)
  local->hw.conf.radar_enabled = ctx->conf.radar_enabled;


 changed = ieee80211_idle_off(local);
 if (changed)
  ieee80211_hw_config(local, changed);

 if (!local->use_chanctx) {
  local->_oper_chandef = ctx->conf.def;
  ieee80211_hw_config(local, IEEE80211_CONF_CHANGE_CHANNEL);
 } else {
  err = drv_add_chanctx(local, ctx);
  if (err) {
   ieee80211_recalc_idle(local);
   return err;
  }
 }

 return 0;
}

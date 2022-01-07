
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cfg80211_chan_def {int dummy; } ;
struct TYPE_4__ {int radar_enabled; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;
struct ieee80211_local {struct cfg80211_chan_def _oper_chandef; TYPE_2__ hw; int chanctx_mtx; int mtx; } ;
struct TYPE_6__ {int radar_enabled; } ;
struct ieee80211_chanctx {TYPE_3__ conf; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 struct cfg80211_chan_def* ieee80211_chanctx_reserved_chandef (struct ieee80211_local*,struct ieee80211_chanctx*,int *) ;
 int ieee80211_hw_config (struct ieee80211_local*,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int ieee80211_chsw_switch_hwconf(struct ieee80211_local *local,
     struct ieee80211_chanctx *new_ctx)
{
 const struct cfg80211_chan_def *chandef;

 lockdep_assert_held(&local->mtx);
 lockdep_assert_held(&local->chanctx_mtx);

 chandef = ieee80211_chanctx_reserved_chandef(local, new_ctx, ((void*)0));
 if (WARN_ON(!chandef))
  return -EINVAL;

 local->hw.conf.radar_enabled = new_ctx->conf.radar_enabled;
 local->_oper_chandef = *chandef;
 ieee80211_hw_config(local, 0);

 return 0;
}

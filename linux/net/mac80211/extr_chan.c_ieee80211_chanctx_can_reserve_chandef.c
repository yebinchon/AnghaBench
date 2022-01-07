
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int chanctx_mtx; } ;
struct ieee80211_chanctx {int reserved_vifs; } ;
struct cfg80211_chan_def {int dummy; } ;


 scalar_t__ ieee80211_chanctx_combined_chandef (struct ieee80211_local*,struct ieee80211_chanctx*,struct cfg80211_chan_def const*) ;
 scalar_t__ ieee80211_chanctx_reserved_chandef (struct ieee80211_local*,struct ieee80211_chanctx*,struct cfg80211_chan_def const*) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static bool
ieee80211_chanctx_can_reserve_chandef(struct ieee80211_local *local,
          struct ieee80211_chanctx *ctx,
          const struct cfg80211_chan_def *def)
{
 lockdep_assert_held(&local->chanctx_mtx);

 if (ieee80211_chanctx_combined_chandef(local, ctx, def))
  return 1;

 if (!list_empty(&ctx->reserved_vifs) &&
     ieee80211_chanctx_reserved_chandef(local, ctx, def))
  return 1;

 return 0;
}

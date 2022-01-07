
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int chanctx_mtx; } ;
struct ieee80211_chanctx {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;


 struct cfg80211_chan_def* ieee80211_chanctx_non_reserved_chandef (struct ieee80211_local*,struct ieee80211_chanctx*,struct cfg80211_chan_def const*) ;
 struct cfg80211_chan_def* ieee80211_chanctx_reserved_chandef (struct ieee80211_local*,struct ieee80211_chanctx*,struct cfg80211_chan_def const*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static const struct cfg80211_chan_def *
ieee80211_chanctx_combined_chandef(struct ieee80211_local *local,
       struct ieee80211_chanctx *ctx,
       const struct cfg80211_chan_def *compat)
{
 lockdep_assert_held(&local->chanctx_mtx);

 compat = ieee80211_chanctx_reserved_chandef(local, ctx, compat);
 if (!compat)
  return ((void*)0);

 compat = ieee80211_chanctx_non_reserved_chandef(local, ctx, compat);
 if (!compat)
  return ((void*)0);

 return compat;
}

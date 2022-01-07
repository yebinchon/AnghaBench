
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ chanctx_data_size; } ;
struct ieee80211_local {TYPE_1__ hw; int chanctx_mtx; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_4__ {int rx_chains_static; int rx_chains_dynamic; int radar_enabled; struct cfg80211_chan_def def; } ;
struct ieee80211_chanctx {int mode; TYPE_2__ conf; int reserved_vifs; int assigned_vifs; } ;
typedef enum ieee80211_chanctx_mode { ____Placeholder_ieee80211_chanctx_mode } ieee80211_chanctx_mode ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ieee80211_recalc_chanctx_min_def (struct ieee80211_local*,struct ieee80211_chanctx*) ;
 struct ieee80211_chanctx* kzalloc (scalar_t__,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static struct ieee80211_chanctx *
ieee80211_alloc_chanctx(struct ieee80211_local *local,
   const struct cfg80211_chan_def *chandef,
   enum ieee80211_chanctx_mode mode)
{
 struct ieee80211_chanctx *ctx;

 lockdep_assert_held(&local->chanctx_mtx);

 ctx = kzalloc(sizeof(*ctx) + local->hw.chanctx_data_size, GFP_KERNEL);
 if (!ctx)
  return ((void*)0);

 INIT_LIST_HEAD(&ctx->assigned_vifs);
 INIT_LIST_HEAD(&ctx->reserved_vifs);
 ctx->conf.def = *chandef;
 ctx->conf.rx_chains_static = 1;
 ctx->conf.rx_chains_dynamic = 1;
 ctx->mode = mode;
 ctx->conf.radar_enabled = 0;
 ieee80211_recalc_chanctx_min_def(local, ctx);

 return ctx;
}

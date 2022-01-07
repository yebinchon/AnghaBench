
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int iftype; } ;
struct ieee80211_sub_if_data {int radar_required; TYPE_2__ wdev; scalar_t__ dev; struct ieee80211_local* local; } ;
struct TYPE_3__ {int wiphy; } ;
struct ieee80211_local {int chanctx_mtx; TYPE_1__ hw; int mtx; } ;
struct ieee80211_chanctx {int dummy; } ;
struct cfg80211_chan_def {int width; } ;
typedef enum ieee80211_chanctx_mode { ____Placeholder_ieee80211_chanctx_mode } ieee80211_chanctx_mode ;


 int BIT (int ) ;
 scalar_t__ IS_ERR (struct ieee80211_chanctx*) ;
 int PTR_ERR (struct ieee80211_chanctx*) ;
 int WARN_ON (int) ;
 int __ieee80211_vif_release_channel (struct ieee80211_sub_if_data*) ;
 int cfg80211_chandef_dfs_required (int ,struct cfg80211_chan_def const*,int ) ;
 int ieee80211_assign_vif_chanctx (struct ieee80211_sub_if_data*,struct ieee80211_chanctx*) ;
 scalar_t__ ieee80211_chanctx_refcount (struct ieee80211_local*,struct ieee80211_chanctx*) ;
 int ieee80211_check_combinations (struct ieee80211_sub_if_data*,struct cfg80211_chan_def const*,int,int ) ;
 struct ieee80211_chanctx* ieee80211_find_chanctx (struct ieee80211_local*,struct cfg80211_chan_def const*,int) ;
 int ieee80211_free_chanctx (struct ieee80211_local*,struct ieee80211_chanctx*) ;
 struct ieee80211_chanctx* ieee80211_new_chanctx (struct ieee80211_local*,struct cfg80211_chan_def const*,int) ;
 int ieee80211_recalc_radar_chanctx (struct ieee80211_local*,struct ieee80211_chanctx*) ;
 int ieee80211_recalc_smps_chanctx (struct ieee80211_local*,struct ieee80211_chanctx*) ;
 int ieee80211_vif_update_chandef (struct ieee80211_sub_if_data*,struct cfg80211_chan_def const*) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ netif_carrier_ok (scalar_t__) ;

int ieee80211_vif_use_channel(struct ieee80211_sub_if_data *sdata,
         const struct cfg80211_chan_def *chandef,
         enum ieee80211_chanctx_mode mode)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_chanctx *ctx;
 u8 radar_detect_width = 0;
 int ret;

 lockdep_assert_held(&local->mtx);

 WARN_ON(sdata->dev && netif_carrier_ok(sdata->dev));

 mutex_lock(&local->chanctx_mtx);

 ret = cfg80211_chandef_dfs_required(local->hw.wiphy,
         chandef,
         sdata->wdev.iftype);
 if (ret < 0)
  goto out;
 if (ret > 0)
  radar_detect_width = BIT(chandef->width);

 sdata->radar_required = ret;

 ret = ieee80211_check_combinations(sdata, chandef, mode,
        radar_detect_width);
 if (ret < 0)
  goto out;

 __ieee80211_vif_release_channel(sdata);

 ctx = ieee80211_find_chanctx(local, chandef, mode);
 if (!ctx)
  ctx = ieee80211_new_chanctx(local, chandef, mode);
 if (IS_ERR(ctx)) {
  ret = PTR_ERR(ctx);
  goto out;
 }

 ieee80211_vif_update_chandef(sdata, chandef);

 ret = ieee80211_assign_vif_chanctx(sdata, ctx);
 if (ret) {

  if (ieee80211_chanctx_refcount(local, ctx) == 0)
   ieee80211_free_chanctx(local, ctx);
  goto out;
 }

 ieee80211_recalc_smps_chanctx(local, ctx);
 ieee80211_recalc_radar_chanctx(local, ctx);
 out:
 if (ret)
  sdata->radar_required = 0;

 mutex_unlock(&local->chanctx_mtx);
 return ret;
}

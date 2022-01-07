
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_sub_if_data {TYPE_2__* local; struct ieee80211_chanctx* reserved_chanctx; int reserved_chanctx_list; } ;
struct ieee80211_chanctx {scalar_t__ replace_state; int list; TYPE_1__* replace_ctx; } ;
struct TYPE_5__ {int chanctx_mtx; } ;
struct TYPE_4__ {scalar_t__ replace_state; struct ieee80211_chanctx* replace_ctx; } ;


 int EINVAL ;
 scalar_t__ IEEE80211_CHANCTX_REPLACES_OTHER ;
 scalar_t__ IEEE80211_CHANCTX_REPLACE_NONE ;
 scalar_t__ IEEE80211_CHANCTX_WILL_BE_REPLACED ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ ieee80211_chanctx_refcount (TYPE_2__*,struct ieee80211_chanctx*) ;
 int ieee80211_free_chanctx (TYPE_2__*,struct ieee80211_chanctx*) ;
 int kfree_rcu (struct ieee80211_chanctx*,int ) ;
 int list_del (int *) ;
 int list_del_rcu (int *) ;
 int lockdep_assert_held (int *) ;
 int rcu_head ;

int ieee80211_vif_unreserve_chanctx(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_chanctx *ctx = sdata->reserved_chanctx;

 lockdep_assert_held(&sdata->local->chanctx_mtx);

 if (WARN_ON(!ctx))
  return -EINVAL;

 list_del(&sdata->reserved_chanctx_list);
 sdata->reserved_chanctx = ((void*)0);

 if (ieee80211_chanctx_refcount(sdata->local, ctx) == 0) {
  if (ctx->replace_state == IEEE80211_CHANCTX_REPLACES_OTHER) {
   if (WARN_ON(!ctx->replace_ctx))
    return -EINVAL;

   WARN_ON(ctx->replace_ctx->replace_state !=
           IEEE80211_CHANCTX_WILL_BE_REPLACED);
   WARN_ON(ctx->replace_ctx->replace_ctx != ctx);

   ctx->replace_ctx->replace_ctx = ((void*)0);
   ctx->replace_ctx->replace_state =
     IEEE80211_CHANCTX_REPLACE_NONE;

   list_del_rcu(&ctx->list);
   kfree_rcu(ctx, rcu_head);
  } else {
   ieee80211_free_chanctx(sdata->local, ctx);
  }
 }

 return 0;
}

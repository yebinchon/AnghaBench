
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int chanctx_mtx; } ;
struct ieee80211_chanctx {int list; } ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ ieee80211_chanctx_refcount (struct ieee80211_local*,struct ieee80211_chanctx*) ;
 int ieee80211_del_chanctx (struct ieee80211_local*,struct ieee80211_chanctx*) ;
 int kfree_rcu (struct ieee80211_chanctx*,int ) ;
 int list_del_rcu (int *) ;
 int lockdep_assert_held (int *) ;
 int rcu_head ;

__attribute__((used)) static void ieee80211_free_chanctx(struct ieee80211_local *local,
       struct ieee80211_chanctx *ctx)
{
 lockdep_assert_held(&local->chanctx_mtx);

 WARN_ON_ONCE(ieee80211_chanctx_refcount(local, ctx) != 0);

 list_del_rcu(&ctx->list);
 ieee80211_del_chanctx(local, ctx);
 kfree_rcu(ctx, rcu_head);
}

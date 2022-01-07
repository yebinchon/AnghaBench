
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int dummy; } ;
struct ieee80211_chanctx {int dummy; } ;


 int ieee80211_chanctx_num_assigned (struct ieee80211_local*,struct ieee80211_chanctx*) ;
 int ieee80211_chanctx_num_reserved (struct ieee80211_local*,struct ieee80211_chanctx*) ;

int ieee80211_chanctx_refcount(struct ieee80211_local *local,
          struct ieee80211_chanctx *ctx)
{
 return ieee80211_chanctx_num_assigned(local, ctx) +
        ieee80211_chanctx_num_reserved(local, ctx);
}

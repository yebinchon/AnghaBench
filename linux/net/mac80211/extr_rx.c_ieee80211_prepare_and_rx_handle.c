
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {int name; } ;
struct ieee80211_rx_data {struct sk_buff* skb; TYPE_1__* sta; struct ieee80211_sub_if_data* sdata; struct ieee80211_local* local; } ;
struct TYPE_4__ {int wiphy; } ;
struct ieee80211_local {TYPE_2__ hw; } ;
struct ieee80211_fast_rx {int dummy; } ;
struct TYPE_3__ {int fast_rx; } ;


 int GFP_ATOMIC ;
 int ieee80211_accept_frame (struct ieee80211_rx_data*) ;
 scalar_t__ ieee80211_invoke_fast_rx (struct ieee80211_rx_data*,struct ieee80211_fast_rx*) ;
 int ieee80211_invoke_rx_handlers (struct ieee80211_rx_data*) ;
 scalar_t__ net_ratelimit () ;
 struct ieee80211_fast_rx* rcu_dereference (int ) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 int wiphy_debug (int ,char*,int ) ;

__attribute__((used)) static bool ieee80211_prepare_and_rx_handle(struct ieee80211_rx_data *rx,
         struct sk_buff *skb, bool consume)
{
 struct ieee80211_local *local = rx->local;
 struct ieee80211_sub_if_data *sdata = rx->sdata;

 rx->skb = skb;
 if (consume && rx->sta) {
  struct ieee80211_fast_rx *fast_rx;

  fast_rx = rcu_dereference(rx->sta->fast_rx);
  if (fast_rx && ieee80211_invoke_fast_rx(rx, fast_rx))
   return 1;
 }

 if (!ieee80211_accept_frame(rx))
  return 0;

 if (!consume) {
  skb = skb_copy(skb, GFP_ATOMIC);
  if (!skb) {
   if (net_ratelimit())
    wiphy_debug(local->hw.wiphy,
     "failed to copy skb for %s\n",
     sdata->name);
   return 1;
  }

  rx->skb = skb;
 }

 ieee80211_invoke_rx_handlers(rx);
 return 1;
}

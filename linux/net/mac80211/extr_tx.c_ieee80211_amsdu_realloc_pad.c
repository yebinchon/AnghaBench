
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int wiphy; } ;
struct ieee80211_local {TYPE_1__ hw; int tx_expand_skb_head; } ;


 int GFP_ATOMIC ;
 int I802_DEBUG_INC (int ) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int,int ,int ) ;
 int skb_headroom (struct sk_buff*) ;
 int wiphy_debug (int ,char*) ;

__attribute__((used)) static bool ieee80211_amsdu_realloc_pad(struct ieee80211_local *local,
     struct sk_buff *skb, int headroom)
{
 if (skb_headroom(skb) < headroom) {
  I802_DEBUG_INC(local->tx_expand_skb_head);

  if (pskb_expand_head(skb, headroom, 0, GFP_ATOMIC)) {
   wiphy_debug(local->hw.wiphy,
        "failed to reallocate TX buffer\n");
   return 0;
  }
 }

 return 1;
}

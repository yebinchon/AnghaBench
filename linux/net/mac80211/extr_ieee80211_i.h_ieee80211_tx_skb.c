
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;


 int ieee80211_tx_skb_tid (struct ieee80211_sub_if_data*,struct sk_buff*,int) ;

__attribute__((used)) static inline void ieee80211_tx_skb(struct ieee80211_sub_if_data *sdata,
        struct sk_buff *skb)
{

 ieee80211_tx_skb_tid(sdata, skb, 7);
}

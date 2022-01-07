
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int __ieee80211_tx_skb_tid_band (struct ieee80211_sub_if_data*,struct sk_buff*,int,int,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline void
ieee80211_tx_skb_tid_band(struct ieee80211_sub_if_data *sdata,
     struct sk_buff *skb, int tid,
     enum nl80211_band band, u32 txdata_flags)
{
 rcu_read_lock();
 __ieee80211_tx_skb_tid_band(sdata, skb, tid, band, txdata_flags);
 rcu_read_unlock();
}

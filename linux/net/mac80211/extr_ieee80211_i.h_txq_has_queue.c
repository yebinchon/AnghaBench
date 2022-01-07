
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int backlog_packets; } ;
struct txq_info {TYPE_1__ tin; int frags; } ;
struct ieee80211_txq {int dummy; } ;


 scalar_t__ skb_queue_empty (int *) ;
 struct txq_info* to_txq_info (struct ieee80211_txq*) ;

__attribute__((used)) static inline bool txq_has_queue(struct ieee80211_txq *txq)
{
 struct txq_info *txqi = to_txq_info(txq);

 return !(skb_queue_empty(&txqi->frags) && !txqi->tin.backlog_packets);
}

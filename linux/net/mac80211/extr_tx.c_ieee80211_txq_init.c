
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int tid; TYPE_3__* sta; int ac; TYPE_1__* vif; } ;
struct txq_info {TYPE_4__ txq; int schedule_order; int frags; int cstats; int def_cvars; int def_flow; int tin; } ;
struct TYPE_7__ {TYPE_4__** txq; } ;
struct sta_info {TYPE_3__ sta; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_4__* txq; } ;
struct ieee80211_sub_if_data {TYPE_2__* local; TYPE_1__ vif; } ;
struct TYPE_6__ {int hw; } ;


 int BUFF_MMPDU_TXQ ;
 int IEEE80211_AC_BE ;
 int IEEE80211_AC_VO ;
 int IEEE80211_NUM_TIDS ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int STA_MMPDU_TXQ ;
 int __skb_queue_head_init (int *) ;
 int codel_stats_init (int *) ;
 int codel_vars_init (int *) ;
 int fq_flow_init (int *) ;
 int fq_tin_init (int *) ;
 int ieee80211_ac_from_tid (int) ;
 int ieee80211_hw_check (int *,int ) ;

void ieee80211_txq_init(struct ieee80211_sub_if_data *sdata,
   struct sta_info *sta,
   struct txq_info *txqi, int tid)
{
 fq_tin_init(&txqi->tin);
 fq_flow_init(&txqi->def_flow);
 codel_vars_init(&txqi->def_cvars);
 codel_stats_init(&txqi->cstats);
 __skb_queue_head_init(&txqi->frags);
 INIT_LIST_HEAD(&txqi->schedule_order);

 txqi->txq.vif = &sdata->vif;

 if (!sta) {
  sdata->vif.txq = &txqi->txq;
  txqi->txq.tid = 0;
  txqi->txq.ac = IEEE80211_AC_BE;

  return;
 }

 if (tid == IEEE80211_NUM_TIDS) {
  if (sdata->vif.type == NL80211_IFTYPE_STATION) {

   if (!ieee80211_hw_check(&sdata->local->hw,
      STA_MMPDU_TXQ))
    return;
  } else if (!ieee80211_hw_check(&sdata->local->hw,
            BUFF_MMPDU_TXQ)) {

   return;
  }
  txqi->txq.ac = IEEE80211_AC_VO;
 } else {
  txqi->txq.ac = ieee80211_ac_from_tid(tid);
 }

 txqi->txq.sta = &sta->sta;
 txqi->txq.tid = tid;
 sta->sta.txq[tid] = &txqi->txq;
}

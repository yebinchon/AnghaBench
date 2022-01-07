
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rates; scalar_t__* txq; int addr; } ;
struct sta_info {int pcpu_rx_stats; struct sta_info* mesh; TYPE_1__ sta; int sdata; scalar_t__ rate_ctrl; } ;
struct ieee80211_local {int dummy; } ;


 int free_percpu (int ) ;
 int kfree (struct sta_info*) ;
 int rate_control_free_sta (struct sta_info*) ;
 struct sta_info* rcu_dereference_raw (int ) ;
 int sta_dbg (int ,char*,int ) ;
 struct sta_info* to_txq_info (scalar_t__) ;

void sta_info_free(struct ieee80211_local *local, struct sta_info *sta)
{
 if (sta->rate_ctrl)
  rate_control_free_sta(sta);

 sta_dbg(sta->sdata, "Destroyed STA %pM\n", sta->sta.addr);

 if (sta->sta.txq[0])
  kfree(to_txq_info(sta->sta.txq[0]));
 kfree(rcu_dereference_raw(sta->sta.rates));



 free_percpu(sta->pcpu_rx_stats);
 kfree(sta);
}

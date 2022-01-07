
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct tid_ampdu_tx {int bar_pending; int failed_bar_ssn; } ;
struct TYPE_3__ {int * tid_tx; } ;
struct sta_info {TYPE_2__* sdata; TYPE_1__ ampdu_mlme; } ;
struct TYPE_4__ {int vif; } ;


 int ieee80211_send_bar (int *,size_t*,size_t,int ) ;
 struct tid_ampdu_tx* rcu_dereference (int ) ;

__attribute__((used)) static void ieee80211_check_pending_bar(struct sta_info *sta, u8 *addr, u8 tid)
{
 struct tid_ampdu_tx *tid_tx;

 tid_tx = rcu_dereference(sta->ampdu_mlme.tid_tx[tid]);
 if (!tid_tx || !tid_tx->bar_pending)
  return;

 tid_tx->bar_pending = 0;
 ieee80211_send_bar(&sta->sdata->vif, addr, tid, tid_tx->failed_bar_ssn);
}

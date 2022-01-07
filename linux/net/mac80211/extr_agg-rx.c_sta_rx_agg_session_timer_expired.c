
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct timer_list {int dummy; } ;
struct tid_ampdu_rx {unsigned long last_rx; int session_timer; int timeout; int tid; struct sta_info* sta; } ;
struct TYPE_6__ {int work; int tid_rx_timer_expired; } ;
struct TYPE_4__ {int addr; } ;
struct sta_info {TYPE_3__ ampdu_mlme; TYPE_2__* local; TYPE_1__ sta; int sdata; } ;
struct TYPE_5__ {int hw; } ;


 unsigned long TU_TO_JIFFIES (int ) ;
 struct tid_ampdu_rx* from_timer (int ,struct timer_list*,int ) ;
 int ht_dbg (int ,char*,int ,int ) ;
 int ieee80211_queue_work (int *,int *) ;
 int mod_timer (int *,unsigned long) ;
 int session_timer ;
 int set_bit (int ,int ) ;
 struct tid_ampdu_rx* tid_rx ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;

__attribute__((used)) static void sta_rx_agg_session_timer_expired(struct timer_list *t)
{
 struct tid_ampdu_rx *tid_rx = from_timer(tid_rx, t, session_timer);
 struct sta_info *sta = tid_rx->sta;
 u8 tid = tid_rx->tid;
 unsigned long timeout;

 timeout = tid_rx->last_rx + TU_TO_JIFFIES(tid_rx->timeout);
 if (time_is_after_jiffies(timeout)) {
  mod_timer(&tid_rx->session_timer, timeout);
  return;
 }

 ht_dbg(sta->sdata, "RX session timer expired on %pM tid %d\n",
        sta->sta.addr, tid);

 set_bit(tid, sta->ampdu_mlme.tid_rx_timer_expired);
 ieee80211_queue_work(&sta->local->hw, &sta->ampdu_mlme.work);
}

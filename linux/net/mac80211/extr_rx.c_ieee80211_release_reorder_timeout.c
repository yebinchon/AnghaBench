
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tid_ampdu_rx {int reorder_lock; } ;
struct TYPE_4__ {int * tid_rx; } ;
struct sta_info {int sta; int sdata; TYPE_1__ ampdu_mlme; int local; } ;
struct sk_buff_head {int dummy; } ;
struct ieee80211_rx_data {int security_idx; int seqno_idx; int sdata; int local; int * napi; struct sta_info* sta; } ;
struct TYPE_5__ {int tid; int * sta; } ;
struct TYPE_6__ {TYPE_2__ ba; } ;
struct ieee80211_event {TYPE_3__ u; int type; } ;


 int BA_FRAME_TIMEOUT ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int drv_event_callback (int ,int ,struct ieee80211_event*) ;
 int ieee80211_rx_handlers (struct ieee80211_rx_data*,struct sk_buff_head*) ;
 int ieee80211_sta_reorder_release (int ,struct tid_ampdu_rx*,struct sk_buff_head*) ;
 struct tid_ampdu_rx* rcu_dereference (int ) ;
 int skb_queue_empty (struct sk_buff_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ieee80211_release_reorder_timeout(struct sta_info *sta, int tid)
{
 struct sk_buff_head frames;
 struct ieee80211_rx_data rx = {
  .sta = sta,
  .sdata = sta->sdata,
  .local = sta->local,

  .security_idx = tid,
  .seqno_idx = tid,
  .napi = ((void*)0),
 };
 struct tid_ampdu_rx *tid_agg_rx;

 tid_agg_rx = rcu_dereference(sta->ampdu_mlme.tid_rx[tid]);
 if (!tid_agg_rx)
  return;

 __skb_queue_head_init(&frames);

 spin_lock(&tid_agg_rx->reorder_lock);
 ieee80211_sta_reorder_release(sta->sdata, tid_agg_rx, &frames);
 spin_unlock(&tid_agg_rx->reorder_lock);

 if (!skb_queue_empty(&frames)) {
  struct ieee80211_event event = {
   .type = BA_FRAME_TIMEOUT,
   .u.ba.tid = tid,
   .u.ba.sta = &sta->sta,
  };
  drv_event_callback(rx.local, rx.sdata, &event);
 }

 ieee80211_rx_handlers(&rx, &frames);
}

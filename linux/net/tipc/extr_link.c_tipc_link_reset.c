
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sk_buff_head {int lock; } ;
struct tipc_link {int in_session; int snd_nxt; int rcv_nxt; int snd_nxt_state; int rcv_nxt_state; int bc_peer_is_up; int mon_state; scalar_t__ rst_cnt; scalar_t__ silent_intv_cnt; scalar_t__ acked; scalar_t__ rcv_unacked; int * failover_reasm_skb; int * reasm_tnlmsg; int * reasm_buf; TYPE_1__* backlog; int failover_deferdq; int backlogq; int deferdq; int transmq; struct sk_buff_head* inputq; struct sk_buff_head wakeupq; int advertised_mtu; int mtu; int session; int peer_session; } ;
struct TYPE_2__ {int * target_bskb; scalar_t__ len; } ;


 size_t TIPC_SYSTEM_IMPORTANCE ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_purge (int *) ;
 int kfree_skb (int *) ;
 int memset (int *,int ,int) ;
 int skb_queue_splice_init (struct sk_buff_head*,struct sk_buff_head*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_link_reset_stats (struct tipc_link*) ;

void tipc_link_reset(struct tipc_link *l)
{
 struct sk_buff_head list;
 u32 imp;

 __skb_queue_head_init(&list);

 l->in_session = 0;

 l->peer_session--;
 l->session++;
 l->mtu = l->advertised_mtu;

 spin_lock_bh(&l->wakeupq.lock);
 skb_queue_splice_init(&l->wakeupq, &list);
 spin_unlock_bh(&l->wakeupq.lock);

 spin_lock_bh(&l->inputq->lock);
 skb_queue_splice_init(&list, l->inputq);
 spin_unlock_bh(&l->inputq->lock);

 __skb_queue_purge(&l->transmq);
 __skb_queue_purge(&l->deferdq);
 __skb_queue_purge(&l->backlogq);
 __skb_queue_purge(&l->failover_deferdq);
 for (imp = 0; imp <= TIPC_SYSTEM_IMPORTANCE; imp++) {
  l->backlog[imp].len = 0;
  l->backlog[imp].target_bskb = ((void*)0);
 }
 kfree_skb(l->reasm_buf);
 kfree_skb(l->reasm_tnlmsg);
 kfree_skb(l->failover_reasm_skb);
 l->reasm_buf = ((void*)0);
 l->reasm_tnlmsg = ((void*)0);
 l->failover_reasm_skb = ((void*)0);
 l->rcv_unacked = 0;
 l->snd_nxt = 1;
 l->rcv_nxt = 1;
 l->snd_nxt_state = 1;
 l->rcv_nxt_state = 1;
 l->acked = 0;
 l->silent_intv_cnt = 0;
 l->rst_cnt = 0;
 l->bc_peer_is_up = 0;
 memset(&l->mon_state, 0, sizeof(l->mon_state));
 tipc_link_reset_stats(l);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct sfq_slot {size_t next; scalar_t__ allot; scalar_t__ qlen; size_t hash; int backlog; } ;
struct sfq_sched_data {scalar_t__ scaled_quantum; struct sfq_slot* tail; int * ht; struct sfq_slot* slots; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;
typedef size_t sfq_index ;


 scalar_t__ SFQ_ALLOT_SIZE (scalar_t__) ;
 int SFQ_EMPTY_SLOT ;
 int qdisc_bstats_update (struct Qdisc*,struct sk_buff*) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 struct sfq_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 int sfq_dec (struct sfq_sched_data*,size_t) ;
 struct sk_buff* slot_dequeue_head (struct sfq_slot*) ;

__attribute__((used)) static struct sk_buff *
sfq_dequeue(struct Qdisc *sch)
{
 struct sfq_sched_data *q = qdisc_priv(sch);
 struct sk_buff *skb;
 sfq_index a, next_a;
 struct sfq_slot *slot;


 if (q->tail == ((void*)0))
  return ((void*)0);

next_slot:
 a = q->tail->next;
 slot = &q->slots[a];
 if (slot->allot <= 0) {
  q->tail = slot;
  slot->allot += q->scaled_quantum;
  goto next_slot;
 }
 skb = slot_dequeue_head(slot);
 sfq_dec(q, a);
 qdisc_bstats_update(sch, skb);
 sch->q.qlen--;
 qdisc_qstats_backlog_dec(sch, skb);
 slot->backlog -= qdisc_pkt_len(skb);

 if (slot->qlen == 0) {
  q->ht[slot->hash] = SFQ_EMPTY_SLOT;
  next_a = slot->next;
  if (a == next_a) {
   q->tail = ((void*)0);
   return skb;
  }
  q->tail->next = next_a;
 } else {
  slot->allot -= SFQ_ALLOT_SIZE(qdisc_pkt_len(skb));
 }
 return skb;
}

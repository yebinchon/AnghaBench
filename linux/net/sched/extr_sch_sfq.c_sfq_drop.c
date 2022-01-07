
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct sfq_slot {unsigned int backlog; int next; size_t hash; } ;
struct sfq_sched_data {int cur_depth; int * ht; TYPE_3__* tail; struct sfq_slot* slots; scalar_t__ headdrop; TYPE_1__* dep; } ;
struct TYPE_5__ {int qlen; } ;
struct Qdisc {TYPE_2__ q; } ;
typedef int sfq_index ;
struct TYPE_6__ {int next; } ;
struct TYPE_4__ {int next; } ;


 int SFQ_EMPTY_SLOT ;
 int qdisc_drop (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;
 unsigned int qdisc_pkt_len (struct sk_buff*) ;
 struct sfq_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 int sfq_dec (struct sfq_sched_data*,int) ;
 struct sk_buff* slot_dequeue_head (struct sfq_slot*) ;
 struct sk_buff* slot_dequeue_tail (struct sfq_slot*) ;

__attribute__((used)) static unsigned int sfq_drop(struct Qdisc *sch, struct sk_buff **to_free)
{
 struct sfq_sched_data *q = qdisc_priv(sch);
 sfq_index x, d = q->cur_depth;
 struct sk_buff *skb;
 unsigned int len;
 struct sfq_slot *slot;


 if (d > 1) {
  x = q->dep[d].next;
  slot = &q->slots[x];
drop:
  skb = q->headdrop ? slot_dequeue_head(slot) : slot_dequeue_tail(slot);
  len = qdisc_pkt_len(skb);
  slot->backlog -= len;
  sfq_dec(q, x);
  sch->q.qlen--;
  qdisc_qstats_backlog_dec(sch, skb);
  qdisc_drop(skb, sch, to_free);
  return len;
 }

 if (d == 1) {

  x = q->tail->next;
  slot = &q->slots[x];
  q->tail->next = slot->next;
  q->ht[slot->hash] = SFQ_EMPTY_SLOT;
  goto drop;
 }

 return 0;
}

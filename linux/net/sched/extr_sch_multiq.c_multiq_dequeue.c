
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct multiq_sched_data {int bands; int curband; struct Qdisc** queues; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; struct sk_buff* (* dequeue ) (struct Qdisc*) ;} ;


 int netdev_get_tx_queue (int ,int) ;
 int netif_xmit_stopped (int ) ;
 int qdisc_bstats_update (struct Qdisc*,struct sk_buff*) ;
 int qdisc_dev (struct Qdisc*) ;
 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;
 struct sk_buff* stub1 (struct Qdisc*) ;

__attribute__((used)) static struct sk_buff *multiq_dequeue(struct Qdisc *sch)
{
 struct multiq_sched_data *q = qdisc_priv(sch);
 struct Qdisc *qdisc;
 struct sk_buff *skb;
 int band;

 for (band = 0; band < q->bands; band++) {

  q->curband++;
  if (q->curband >= q->bands)
   q->curband = 0;




  if (!netif_xmit_stopped(
      netdev_get_tx_queue(qdisc_dev(sch), q->curband))) {
   qdisc = q->queues[q->curband];
   skb = qdisc->dequeue(qdisc);
   if (skb) {
    qdisc_bstats_update(sch, skb);
    sch->q.qlen--;
    return skb;
   }
  }
 }
 return ((void*)0);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ qlen; } ;
struct teql_sched_data {TYPE_3__ q; TYPE_1__* m; } ;
struct sk_buff {int dummy; } ;
struct netdev_queue {int qdisc; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_2__ q; } ;
struct TYPE_4__ {struct Qdisc* slaves; int dev; } ;


 struct sk_buff* __skb_dequeue (TYPE_3__*) ;
 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 int netif_wake_queue (struct net_device*) ;
 int qdisc_bstats_update (struct Qdisc*,struct sk_buff*) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct teql_sched_data* qdisc_priv (struct Qdisc*) ;
 struct Qdisc* rcu_dereference_bh (int ) ;

__attribute__((used)) static struct sk_buff *
teql_dequeue(struct Qdisc *sch)
{
 struct teql_sched_data *dat = qdisc_priv(sch);
 struct netdev_queue *dat_queue;
 struct sk_buff *skb;
 struct Qdisc *q;

 skb = __skb_dequeue(&dat->q);
 dat_queue = netdev_get_tx_queue(dat->m->dev, 0);
 q = rcu_dereference_bh(dat_queue->qdisc);

 if (skb == ((void*)0)) {
  struct net_device *m = qdisc_dev(q);
  if (m) {
   dat->m->slaves = sch;
   netif_wake_queue(m);
  }
 } else {
  qdisc_bstats_update(sch, skb);
 }
 sch->q.qlen = dat->q.qlen + q->q.qlen;
 return skb;
}

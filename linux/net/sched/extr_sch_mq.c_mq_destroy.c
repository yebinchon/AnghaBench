
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int num_tx_queues; } ;
struct mq_sched {scalar_t__* qdiscs; } ;
struct Qdisc {int dummy; } ;


 int TC_MQ_DESTROY ;
 int kfree (scalar_t__*) ;
 int mq_offload (struct Qdisc*,int ) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct mq_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_put (scalar_t__) ;

__attribute__((used)) static void mq_destroy(struct Qdisc *sch)
{
 struct net_device *dev = qdisc_dev(sch);
 struct mq_sched *priv = qdisc_priv(sch);
 unsigned int ntx;

 mq_offload(sch, TC_MQ_DESTROY);

 if (!priv->qdiscs)
  return;
 for (ntx = 0; ntx < dev->num_tx_queues && priv->qdiscs[ntx]; ntx++)
  qdisc_put(priv->qdiscs[ntx]);
 kfree(priv->qdiscs);
}

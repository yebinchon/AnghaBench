
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int state; int qdisc; } ;
struct Qdisc {int dummy; } ;


 int QUEUE_STATE_ANY_XOFF ;
 int __netif_schedule (struct Qdisc*) ;
 struct Qdisc* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void netif_schedule_queue(struct netdev_queue *txq)
{
 rcu_read_lock();
 if (!(txq->state & QUEUE_STATE_ANY_XOFF)) {
  struct Qdisc *q = rcu_dereference(txq->qdisc);

  __netif_schedule(q);
 }
 rcu_read_unlock();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int qdisc; int state; } ;
struct Qdisc {int dummy; } ;


 int __QUEUE_STATE_DRV_XOFF ;
 int __netif_schedule (struct Qdisc*) ;
 struct Qdisc* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void netif_tx_wake_queue(struct netdev_queue *dev_queue)
{
 if (test_and_clear_bit(__QUEUE_STATE_DRV_XOFF, &dev_queue->state)) {
  struct Qdisc *q;

  rcu_read_lock();
  q = rcu_dereference(dev_queue->qdisc);
  __netif_schedule(q);
  rcu_read_unlock();
 }
}

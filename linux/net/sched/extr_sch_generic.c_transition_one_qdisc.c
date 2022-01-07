
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {scalar_t__ trans_start; int qdisc; struct Qdisc* qdisc_sleeping; } ;
struct net_device {int dummy; } ;
struct Qdisc {int flags; int state; } ;


 int TCQ_F_BUILTIN ;
 int __QDISC_STATE_DEACTIVATED ;
 int clear_bit (int ,int *) ;
 int rcu_assign_pointer (int ,struct Qdisc*) ;

__attribute__((used)) static void transition_one_qdisc(struct net_device *dev,
     struct netdev_queue *dev_queue,
     void *_need_watchdog)
{
 struct Qdisc *new_qdisc = dev_queue->qdisc_sleeping;
 int *need_watchdog_p = _need_watchdog;

 if (!(new_qdisc->flags & TCQ_F_BUILTIN))
  clear_bit(__QDISC_STATE_DEACTIVATED, &new_qdisc->state);

 rcu_assign_pointer(dev_queue->qdisc, new_qdisc);
 if (need_watchdog_p) {
  dev_queue->trans_start = 0;
  *need_watchdog_p = 1;
 }
}

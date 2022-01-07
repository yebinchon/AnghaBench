
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long expires; int dwork; } ;
struct rpc_wait_queue {TYPE_1__ timer_list; } ;


 unsigned long jiffies ;
 int mod_delayed_work (int ,int *,unsigned long) ;
 int rpciod_workqueue ;
 scalar_t__ time_before_eq (unsigned long,unsigned long) ;

__attribute__((used)) static void
rpc_set_queue_timer(struct rpc_wait_queue *queue, unsigned long expires)
{
 unsigned long now = jiffies;
 queue->timer_list.expires = expires;
 if (time_before_eq(expires, now))
  expires = 0;
 else
  expires -= now;
 mod_delayed_work(rpciod_workqueue, &queue->timer_list.dwork, expires);
}

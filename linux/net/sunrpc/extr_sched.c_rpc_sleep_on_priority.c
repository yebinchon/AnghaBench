
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int lock; } ;
struct rpc_task {scalar_t__ tk_timeout; } ;


 scalar_t__ RPC_PRIORITY_LOW ;
 int WARN_ON_ONCE (int) ;
 int __rpc_sleep_on_priority (struct rpc_wait_queue*,struct rpc_task*,int) ;
 int rpc_sleep_check_activated (struct rpc_task*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rpc_sleep_on_priority(struct rpc_wait_queue *q, struct rpc_task *task,
  int priority)
{
 if (!rpc_sleep_check_activated(task))
  return;

 WARN_ON_ONCE(task->tk_timeout != 0);
 priority -= RPC_PRIORITY_LOW;



 spin_lock(&q->lock);
 __rpc_sleep_on_priority(q, task, priority);
 spin_unlock(&q->lock);
}

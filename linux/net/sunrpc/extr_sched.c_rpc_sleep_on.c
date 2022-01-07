
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int lock; } ;
struct rpc_task {scalar_t__ tk_timeout; int tk_priority; } ;
typedef int rpc_action ;


 int WARN_ON_ONCE (int) ;
 int __rpc_sleep_on_priority (struct rpc_wait_queue*,struct rpc_task*,int ) ;
 int rpc_set_tk_callback (struct rpc_task*,int ) ;
 int rpc_sleep_check_activated (struct rpc_task*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rpc_sleep_on(struct rpc_wait_queue *q, struct rpc_task *task,
    rpc_action action)
{
 if (!rpc_sleep_check_activated(task))
  return;

 rpc_set_tk_callback(task, action);

 WARN_ON_ONCE(task->tk_timeout != 0);



 spin_lock(&q->lock);
 __rpc_sleep_on_priority(q, task, task->tk_priority);
 spin_unlock(&q->lock);
}

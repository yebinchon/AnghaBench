
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int lock; } ;
struct rpc_task {int tk_priority; } ;
typedef int rpc_action ;


 int __rpc_sleep_on_priority_timeout (struct rpc_wait_queue*,struct rpc_task*,unsigned long,int ) ;
 int rpc_set_tk_callback (struct rpc_task*,int ) ;
 int rpc_sleep_check_activated (struct rpc_task*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rpc_sleep_on_timeout(struct rpc_wait_queue *q, struct rpc_task *task,
    rpc_action action, unsigned long timeout)
{
 if (!rpc_sleep_check_activated(task))
  return;

 rpc_set_tk_callback(task, action);




 spin_lock(&q->lock);
 __rpc_sleep_on_priority_timeout(q, task, timeout, task->tk_priority);
 spin_unlock(&q->lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int dummy; } ;
struct rpc_task {int tk_waitqueue; int tk_runstate; } ;


 int ERESTARTSYS ;
 struct rpc_wait_queue* READ_ONCE (int ) ;
 int RPC_IS_ACTIVATED (struct rpc_task*) ;
 int RPC_TASK_SIGNALLED ;
 int rpc_wake_up_queued_task_set_status (struct rpc_wait_queue*,struct rpc_task*,int ) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;

void rpc_signal_task(struct rpc_task *task)
{
 struct rpc_wait_queue *queue;

 if (!RPC_IS_ACTIVATED(task))
  return;
 set_bit(RPC_TASK_SIGNALLED, &task->tk_runstate);
 smp_mb__after_atomic();
 queue = READ_ONCE(task->tk_waitqueue);
 if (queue)
  rpc_wake_up_queued_task_set_status(queue, task, -ERESTARTSYS);
}

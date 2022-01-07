
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct rpc_wait_queue {int dummy; } ;
struct rpc_task {struct rpc_wait_queue* tk_waitqueue; } ;


 scalar_t__ RPC_IS_QUEUED (struct rpc_task*) ;
 int __rpc_do_wake_up_task_on_wq (struct workqueue_struct*,struct rpc_wait_queue*,struct rpc_task*) ;
 int smp_rmb () ;

__attribute__((used)) static struct rpc_task *
rpc_wake_up_task_on_wq_queue_action_locked(struct workqueue_struct *wq,
  struct rpc_wait_queue *queue, struct rpc_task *task,
  bool (*action)(struct rpc_task *, void *), void *data)
{
 if (RPC_IS_QUEUED(task)) {
  smp_rmb();
  if (task->tk_waitqueue == queue) {
   if (action == ((void*)0) || action(task, data)) {
    __rpc_do_wake_up_task_on_wq(wq, queue, task);
    return task;
   }
  }
 }
 return ((void*)0);
}

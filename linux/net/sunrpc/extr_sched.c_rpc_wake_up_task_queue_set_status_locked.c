
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int dummy; } ;
struct rpc_task {int dummy; } ;


 int rpc_task_action_set_status ;
 int rpc_wake_up_task_on_wq_queue_action_locked (int ,struct rpc_wait_queue*,struct rpc_task*,int ,int*) ;
 int rpciod_workqueue ;

__attribute__((used)) static void
rpc_wake_up_task_queue_set_status_locked(struct rpc_wait_queue *queue,
  struct rpc_task *task, int status)
{
 rpc_wake_up_task_on_wq_queue_action_locked(rpciod_workqueue, queue,
   task, rpc_task_action_set_status, &status);
}

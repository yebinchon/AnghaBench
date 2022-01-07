
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct workqueue_struct {int dummy; } ;
struct TYPE_2__ {int tk_work; } ;
struct rpc_task {int tk_runstate; TYPE_1__ u; } ;


 int INIT_WORK (int *,int ) ;
 scalar_t__ RPC_IS_ASYNC (struct rpc_task*) ;
 int RPC_TASK_QUEUED ;
 int queue_work (struct workqueue_struct*,int *) ;
 int rpc_async_schedule ;
 int rpc_clear_queued (struct rpc_task*) ;
 int rpc_test_and_set_running (struct rpc_task*) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void rpc_make_runnable(struct workqueue_struct *wq,
  struct rpc_task *task)
{
 bool need_wakeup = !rpc_test_and_set_running(task);

 rpc_clear_queued(task);
 if (!need_wakeup)
  return;
 if (RPC_IS_ASYNC(task)) {
  INIT_WORK(&task->u.tk_work, rpc_async_schedule);
  queue_work(wq, &task->u.tk_work);
 } else
  wake_up_bit(&task->tk_runstate, RPC_TASK_QUEUED);
}

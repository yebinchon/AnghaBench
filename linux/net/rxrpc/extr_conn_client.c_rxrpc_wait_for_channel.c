
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int waitq; int flags; scalar_t__ call_id; int debug_id; } ;
typedef int gfp_t ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int RXRPC_CALL_IS_INTR ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int _enter (char*,int ) ;
 int _leave (char*,int) ;
 int add_wait_queue_exclusive (int *,int *) ;
 int current ;
 int gfpflags_allow_blocking (int ) ;
 int myself ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int smp_rmb () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int rxrpc_wait_for_channel(struct rxrpc_call *call, gfp_t gfp)
{
 int ret = 0;

 _enter("%d", call->debug_id);

 if (!call->call_id) {
  DECLARE_WAITQUEUE(myself, current);

  if (!gfpflags_allow_blocking(gfp)) {
   ret = -EAGAIN;
   goto out;
  }

  add_wait_queue_exclusive(&call->waitq, &myself);
  for (;;) {
   if (test_bit(RXRPC_CALL_IS_INTR, &call->flags))
    set_current_state(TASK_INTERRUPTIBLE);
   else
    set_current_state(TASK_UNINTERRUPTIBLE);
   if (call->call_id)
    break;
   if (test_bit(RXRPC_CALL_IS_INTR, &call->flags) &&
       signal_pending(current)) {
    ret = -ERESTARTSYS;
    break;
   }
   schedule();
  }
  remove_wait_queue(&call->waitq, &myself);
  __set_current_state(TASK_RUNNING);
 }


 smp_rmb();

out:
 _leave(" = %d", ret);
 return ret;
}

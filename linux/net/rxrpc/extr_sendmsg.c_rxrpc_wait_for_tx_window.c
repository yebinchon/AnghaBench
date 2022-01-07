
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_sock {int dummy; } ;
struct rxrpc_call {int waitq; int tx_winsize; int tx_top; int tx_hard_ack; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_RUNNING ;
 int _enter (char*,int ,int ,int ) ;
 int _leave (char*,int) ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int myself ;
 int remove_wait_queue (int *,int *) ;
 int rxrpc_wait_for_tx_window_intr (struct rxrpc_sock*,struct rxrpc_call*,long*) ;
 int rxrpc_wait_for_tx_window_nonintr (struct rxrpc_sock*,struct rxrpc_call*) ;
 int set_current_state (int ) ;

__attribute__((used)) static int rxrpc_wait_for_tx_window(struct rxrpc_sock *rx,
        struct rxrpc_call *call,
        long *timeo,
        bool waitall)
{
 DECLARE_WAITQUEUE(myself, current);
 int ret;

 _enter(",{%u,%u,%u}",
        call->tx_hard_ack, call->tx_top, call->tx_winsize);

 add_wait_queue(&call->waitq, &myself);

 if (waitall)
  ret = rxrpc_wait_for_tx_window_nonintr(rx, call);
 else
  ret = rxrpc_wait_for_tx_window_intr(rx, call, timeo);

 remove_wait_queue(&call->waitq, &myself);
 set_current_state(TASK_RUNNING);
 _leave(" = %d", ret);
 return ret;
}

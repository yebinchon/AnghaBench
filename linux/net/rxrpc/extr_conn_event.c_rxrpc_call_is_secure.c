
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {scalar_t__ state; int state_lock; } ;


 scalar_t__ RXRPC_CALL_SERVER_ACCEPTING ;
 scalar_t__ RXRPC_CALL_SERVER_SECURING ;
 int _enter (char*,struct rxrpc_call*) ;
 int rxrpc_notify_socket (struct rxrpc_call*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void rxrpc_call_is_secure(struct rxrpc_call *call)
{
 _enter("%p", call);
 if (call) {
  write_lock_bh(&call->state_lock);
  if (call->state == RXRPC_CALL_SERVER_SECURING) {
   call->state = RXRPC_CALL_SERVER_ACCEPTING;
   rxrpc_notify_socket(call);
  }
  write_unlock_bh(&call->state_lock);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_sock {int incoming_lock; } ;
struct rxrpc_connection {int dummy; } ;
struct rxrpc_call {int events; int state; } ;


 int ESHUTDOWN ;
 int READ_ONCE (int ) ;

 int RXRPC_CALL_EV_ABORT ;

 int RX_CALL_DEAD ;
 int __rxrpc_disconnect_call (struct rxrpc_connection*,struct rxrpc_call*) ;
 int rxrpc_abort_call (char*,struct rxrpc_call*,int ,int ,int ) ;
 int rxrpc_call_completed (struct rxrpc_call*) ;
 int rxrpc_notify_socket (struct rxrpc_call*) ;
 int rxrpc_queue_call (struct rxrpc_call*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_rxrpc_improper_term (struct rxrpc_call*) ;

__attribute__((used)) static void rxrpc_input_implicit_end_call(struct rxrpc_sock *rx,
       struct rxrpc_connection *conn,
       struct rxrpc_call *call)
{
 switch (READ_ONCE(call->state)) {
 case 128:
  rxrpc_call_completed(call);

 case 129:
  break;
 default:
  if (rxrpc_abort_call("IMP", call, 0, RX_CALL_DEAD, -ESHUTDOWN)) {
   set_bit(RXRPC_CALL_EV_ABORT, &call->events);
   rxrpc_queue_call(call);
  }
  trace_rxrpc_improper_term(call);
  break;
 }

 spin_lock(&rx->incoming_lock);
 __rxrpc_disconnect_call(conn, call);
 spin_unlock(&rx->incoming_lock);
 rxrpc_notify_socket(call);
}

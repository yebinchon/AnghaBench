
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {unsigned int state; int tx_top; int state_lock; int flags; } ;


 int ASSERT (int ) ;

 unsigned int RXRPC_CALL_CLIENT_RECV_REPLY ;


 int RXRPC_CALL_TX_LAST ;
 int __rxrpc_call_completed (struct rxrpc_call*) ;
 int _leave (char*) ;
 int kdebug (char*,int ) ;
 int * rxrpc_call_states ;
 int rxrpc_notify_socket (struct rxrpc_call*) ;
 int rxrpc_proto_abort (char const*,struct rxrpc_call*,int ) ;
 int rxrpc_transmit_await_reply ;
 int rxrpc_transmit_end ;
 int test_bit (int ,int *) ;
 int trace_rxrpc_transmit (struct rxrpc_call*,int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static bool rxrpc_end_tx_phase(struct rxrpc_call *call, bool reply_begun,
          const char *abort_why)
{
 unsigned int state;

 ASSERT(test_bit(RXRPC_CALL_TX_LAST, &call->flags));

 write_lock(&call->state_lock);

 state = call->state;
 switch (state) {
 case 129:
 case 130:
  if (reply_begun)
   call->state = state = RXRPC_CALL_CLIENT_RECV_REPLY;
  else
   call->state = state = 130;
  break;

 case 128:
  __rxrpc_call_completed(call);
  rxrpc_notify_socket(call);
  state = call->state;
  break;

 default:
  goto bad_state;
 }

 write_unlock(&call->state_lock);
 if (state == 130)
  trace_rxrpc_transmit(call, rxrpc_transmit_await_reply);
 else
  trace_rxrpc_transmit(call, rxrpc_transmit_end);
 _leave(" = ok");
 return 1;

bad_state:
 write_unlock(&call->state_lock);
 kdebug("end_tx %s", rxrpc_call_states[call->state]);
 rxrpc_proto_abort(abort_why, call, call->tx_top);
 return 0;
}

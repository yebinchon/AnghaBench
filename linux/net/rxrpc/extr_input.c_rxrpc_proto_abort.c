
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int events; } ;
typedef int rxrpc_seq_t ;


 int EBADMSG ;
 int RXRPC_CALL_EV_ABORT ;
 int RX_PROTOCOL_ERROR ;
 scalar_t__ rxrpc_abort_call (char const*,struct rxrpc_call*,int ,int ,int ) ;
 int rxrpc_queue_call (struct rxrpc_call*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void rxrpc_proto_abort(const char *why,
         struct rxrpc_call *call, rxrpc_seq_t seq)
{
 if (rxrpc_abort_call(why, call, seq, RX_PROTOCOL_ERROR, -EBADMSG)) {
  set_bit(RXRPC_CALL_EV_ABORT, &call->events);
  rxrpc_queue_call(call);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_connection {int debug_id; struct rxrpc_channel* channels; } ;
struct rxrpc_channel {int call; int call_counter; int call_id; int last_call; void* last_type; int last_abort; int last_seq; } ;
struct rxrpc_call {size_t cid; int completion; int abort_code; int rx_hard_ack; } ;




 size_t RXRPC_CHANNELMASK ;
 void* RXRPC_PACKET_TYPE_ABORT ;
 void* RXRPC_PACKET_TYPE_ACK ;
 int RX_USER_ABORT ;
 int _enter (char*,int ,size_t) ;
 int _leave (char*) ;
 struct rxrpc_call* rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,int *) ;
 int smp_wmb () ;
 int trace_rxrpc_disconnect_call (struct rxrpc_call*) ;

void __rxrpc_disconnect_call(struct rxrpc_connection *conn,
        struct rxrpc_call *call)
{
 struct rxrpc_channel *chan =
  &conn->channels[call->cid & RXRPC_CHANNELMASK];

 _enter("%d,%x", conn->debug_id, call->cid);

 if (rcu_access_pointer(chan->call) == call) {



  trace_rxrpc_disconnect_call(call);
  switch (call->completion) {
  case 128:
   chan->last_seq = call->rx_hard_ack;
   chan->last_type = RXRPC_PACKET_TYPE_ACK;
   break;
  case 129:
   chan->last_abort = call->abort_code;
   chan->last_type = RXRPC_PACKET_TYPE_ABORT;
   break;
  default:
   chan->last_abort = RX_USER_ABORT;
   chan->last_type = RXRPC_PACKET_TYPE_ABORT;
   break;
  }


  smp_wmb();
  chan->last_call = chan->call_id;
  chan->call_id = chan->call_counter;

  rcu_assign_pointer(chan->call, ((void*)0));
 }

 _leave("");
}

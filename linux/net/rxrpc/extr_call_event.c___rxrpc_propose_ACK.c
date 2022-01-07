
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct rxrpc_call {size_t ackr_reason; int ackr_serial; int ack_at; int tx_backoff; TYPE_1__* peer; int events; } ;
typedef scalar_t__ s8 ;
typedef enum rxrpc_propose_ack_trace { ____Placeholder_rxrpc_propose_ack_trace } rxrpc_propose_ack_trace ;
typedef enum rxrpc_propose_ack_outcome { ____Placeholder_rxrpc_propose_ack_outcome } rxrpc_propose_ack_outcome ;
struct TYPE_2__ {scalar_t__ rtt_usage; int rtt; } ;


 scalar_t__ READ_ONCE (int ) ;


 size_t RXRPC_ACK_PING ;

 int RXRPC_ACK_UPDATEABLE ;
 int RXRPC_CALL_EV_ACK ;
 int WRITE_ONCE (int ,unsigned long) ;
 int _debug (char*,...) ;
 unsigned long jiffies ;
 unsigned long nsecs_to_jiffies (int ) ;
 scalar_t__* rxrpc_ack_priority ;
 unsigned long rxrpc_idle_ack_delay ;
 int rxrpc_propose_ack_subsume ;
 int rxrpc_propose_ack_update ;
 int rxrpc_propose_ack_use ;
 int rxrpc_propose_ping (struct rxrpc_call*,int,int) ;
 int rxrpc_queue_call (struct rxrpc_call*) ;
 int rxrpc_reduce_call_timer (struct rxrpc_call*,unsigned long,unsigned long,int ) ;
 unsigned long rxrpc_requested_ack_delay ;
 unsigned long rxrpc_soft_ack_delay ;
 int rxrpc_timer_set_for_ack ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_before (unsigned long,int ) ;
 int trace_rxrpc_propose_ack (struct rxrpc_call*,int,size_t,int,int,int,int) ;

__attribute__((used)) static void __rxrpc_propose_ACK(struct rxrpc_call *call, u8 ack_reason,
    u32 serial, bool immediate, bool background,
    enum rxrpc_propose_ack_trace why)
{
 enum rxrpc_propose_ack_outcome outcome = rxrpc_propose_ack_use;
 unsigned long expiry = rxrpc_soft_ack_delay;
 s8 prior = rxrpc_ack_priority[ack_reason];




 if (ack_reason == RXRPC_ACK_PING) {
  rxrpc_propose_ping(call, immediate, background);
  goto trace;
 }




 _debug("prior %u %u vs %u %u",
        ack_reason, prior,
        call->ackr_reason, rxrpc_ack_priority[call->ackr_reason]);
 if (ack_reason == call->ackr_reason) {
  if (RXRPC_ACK_UPDATEABLE & (1 << ack_reason)) {
   outcome = rxrpc_propose_ack_update;
   call->ackr_serial = serial;
  }
  if (!immediate)
   goto trace;
 } else if (prior > rxrpc_ack_priority[call->ackr_reason]) {
  call->ackr_reason = ack_reason;
  call->ackr_serial = serial;
 } else {
  outcome = rxrpc_propose_ack_subsume;
 }

 switch (ack_reason) {
 case 128:
  if (rxrpc_requested_ack_delay < expiry)
   expiry = rxrpc_requested_ack_delay;
  if (serial == 1)
   immediate = 0;
  break;

 case 130:
  if (rxrpc_soft_ack_delay < expiry)
   expiry = rxrpc_soft_ack_delay;
  break;

 case 129:
  if (rxrpc_idle_ack_delay < expiry)
   expiry = rxrpc_idle_ack_delay;
  break;

 default:
  immediate = 1;
  break;
 }

 if (test_bit(RXRPC_CALL_EV_ACK, &call->events)) {
  _debug("already scheduled");
 } else if (immediate || expiry == 0) {
  _debug("immediate ACK %lx", call->events);
  if (!test_and_set_bit(RXRPC_CALL_EV_ACK, &call->events) &&
      background)
   rxrpc_queue_call(call);
 } else {
  unsigned long now = jiffies, ack_at;

  if (call->peer->rtt_usage > 0)
   ack_at = nsecs_to_jiffies(call->peer->rtt);
  else
   ack_at = expiry;

  ack_at += READ_ONCE(call->tx_backoff);
  ack_at += now;
  if (time_before(ack_at, call->ack_at)) {
   WRITE_ONCE(call->ack_at, ack_at);
   rxrpc_reduce_call_timer(call, ack_at, now,
      rxrpc_timer_set_for_ack);
  }
 }

trace:
 trace_rxrpc_propose_ack(call, why, ack_reason, serial, immediate,
    background, outcome);
}

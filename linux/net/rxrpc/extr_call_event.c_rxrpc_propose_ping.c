
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int ping_at; int events; } ;


 int RXRPC_CALL_EV_PING ;
 int WRITE_ONCE (int ,unsigned long) ;
 unsigned long jiffies ;
 unsigned long rxrpc_idle_ack_delay ;
 int rxrpc_queue_call (struct rxrpc_call*) ;
 int rxrpc_reduce_call_timer (struct rxrpc_call*,unsigned long,unsigned long,int ) ;
 int rxrpc_timer_set_for_ping ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ time_before (unsigned long,int ) ;

__attribute__((used)) static void rxrpc_propose_ping(struct rxrpc_call *call,
          bool immediate, bool background)
{
 if (immediate) {
  if (background &&
      !test_and_set_bit(RXRPC_CALL_EV_PING, &call->events))
   rxrpc_queue_call(call);
 } else {
  unsigned long now = jiffies;
  unsigned long ping_at = now + rxrpc_idle_ack_delay;

  if (time_before(ping_at, call->ping_at)) {
   WRITE_ONCE(call->ping_at, ping_at);
   rxrpc_reduce_call_timer(call, ping_at, now,
      rxrpc_timer_set_for_ping);
  }
 }
}

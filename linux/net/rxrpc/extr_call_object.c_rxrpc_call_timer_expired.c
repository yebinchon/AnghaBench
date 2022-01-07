
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct rxrpc_call {scalar_t__ state; int debug_id; } ;


 scalar_t__ RXRPC_CALL_COMPLETE ;
 int _enter (char*,int ) ;
 struct rxrpc_call* call ;
 struct rxrpc_call* from_timer (int ,struct timer_list*,int ) ;
 int jiffies ;
 int rxrpc_queue_call (struct rxrpc_call*) ;
 int rxrpc_timer_expired ;
 int timer ;
 int trace_rxrpc_timer (struct rxrpc_call*,int ,int ) ;

__attribute__((used)) static void rxrpc_call_timer_expired(struct timer_list *t)
{
 struct rxrpc_call *call = from_timer(call, t, timer);

 _enter("%d", call->debug_id);

 if (call->state < RXRPC_CALL_COMPLETE) {
  trace_rxrpc_timer(call, rxrpc_timer_expired, jiffies);
  rxrpc_queue_call(call);
 }
}

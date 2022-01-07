
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int timer; } ;
typedef enum rxrpc_timer_trace { ____Placeholder_rxrpc_timer_trace } rxrpc_timer_trace ;


 int timer_reduce (int *,unsigned long) ;
 int trace_rxrpc_timer (struct rxrpc_call*,int,unsigned long) ;

__attribute__((used)) static inline void rxrpc_reduce_call_timer(struct rxrpc_call *call,
        unsigned long expire_at,
        unsigned long now,
        enum rxrpc_timer_trace why)
{
 trace_rxrpc_timer(call, why, now);
 timer_reduce(&call->timer, expire_at);
}

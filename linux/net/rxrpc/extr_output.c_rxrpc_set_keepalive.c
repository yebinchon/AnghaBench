
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int next_rx_timo; int keepalive_at; } ;


 int WRITE_ONCE (int ,unsigned long) ;
 unsigned long jiffies ;
 int rxrpc_reduce_call_timer (struct rxrpc_call*,unsigned long,unsigned long,int ) ;
 int rxrpc_timer_set_for_keepalive ;

__attribute__((used)) static void rxrpc_set_keepalive(struct rxrpc_call *call)
{
 unsigned long now = jiffies, keepalive_at = call->next_rx_timo / 6;

 keepalive_at += now;
 WRITE_ONCE(call->keepalive_at, keepalive_at);
 rxrpc_reduce_call_timer(call, keepalive_at, now,
    rxrpc_timer_set_for_keepalive);
}

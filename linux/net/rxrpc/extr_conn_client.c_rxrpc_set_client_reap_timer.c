
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_net {int client_conn_reap_timer; scalar_t__ live; } ;


 unsigned long jiffies ;
 unsigned long rxrpc_conn_idle_client_expiry ;
 int timer_reduce (int *,unsigned long) ;

__attribute__((used)) static void rxrpc_set_client_reap_timer(struct rxrpc_net *rxnet)
{
 unsigned long now = jiffies;
 unsigned long reap_at = now + rxrpc_conn_idle_client_expiry;

 if (rxnet->live)
  timer_reduce(&rxnet->client_conn_reap_timer, reap_at);
}

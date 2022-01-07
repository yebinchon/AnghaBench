
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_net {int service_conn_reap_timer; scalar_t__ live; } ;


 int timer_reduce (int *,unsigned long) ;

__attribute__((used)) static void rxrpc_set_service_reap_timer(struct rxrpc_net *rxnet,
      unsigned long reap_at)
{
 if (rxnet->live)
  timer_reduce(&rxnet->service_conn_reap_timer, reap_at);
}

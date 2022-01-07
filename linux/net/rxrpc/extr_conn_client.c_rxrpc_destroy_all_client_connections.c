
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_net {int kill_all_client_conns; int client_conn_reaper; int client_conn_reap_timer; int client_conn_cache_lock; } ;


 int _debug (char*) ;
 int _enter (char*) ;
 int _leave (char*) ;
 int del_timer_sync (int *) ;
 int rxrpc_queue_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rxrpc_destroy_all_client_connections(struct rxrpc_net *rxnet)
{
 _enter("");

 spin_lock(&rxnet->client_conn_cache_lock);
 rxnet->kill_all_client_conns = 1;
 spin_unlock(&rxnet->client_conn_cache_lock);

 del_timer_sync(&rxnet->client_conn_reap_timer);

 if (!rxrpc_queue_work(&rxnet->client_conn_reaper))
  _debug("destroy: queue failed");

 _leave("");
}

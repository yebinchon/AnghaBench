
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct rxrpc_net {int service_conn_reaper; int local_mutex; } ;
struct rxrpc_local {int dead; int event_queue; int reject_queue; struct socket* socket; int service; int link; int debug_id; struct rxrpc_net* rxnet; } ;
struct TYPE_2__ {int * sk_user_data; } ;


 int ASSERT (int) ;
 int SHUT_RDWR ;
 int _enter (char*,int ) ;
 int kernel_sock_shutdown (struct socket*,int ) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rxrpc_clean_up_local_conns (struct rxrpc_local*) ;
 int rxrpc_purge_queue (int *) ;
 int rxrpc_service_connection_reaper (int *) ;
 int sock_release (struct socket*) ;

__attribute__((used)) static void rxrpc_local_destroyer(struct rxrpc_local *local)
{
 struct socket *socket = local->socket;
 struct rxrpc_net *rxnet = local->rxnet;

 _enter("%d", local->debug_id);

 local->dead = 1;

 mutex_lock(&rxnet->local_mutex);
 list_del_init(&local->link);
 mutex_unlock(&rxnet->local_mutex);

 rxrpc_clean_up_local_conns(local);
 rxrpc_service_connection_reaper(&rxnet->service_conn_reaper);
 ASSERT(!local->service);

 if (socket) {
  local->socket = ((void*)0);
  kernel_sock_shutdown(socket, SHUT_RDWR);
  socket->sk->sk_user_data = ((void*)0);
  sock_release(socket);
 }




 rxrpc_purge_queue(&local->reject_queue);
 rxrpc_purge_queue(&local->event_queue);
}

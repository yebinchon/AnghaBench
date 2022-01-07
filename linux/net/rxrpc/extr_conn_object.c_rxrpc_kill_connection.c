
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rxrpc_net {int conn_lock; } ;
struct TYPE_5__ {TYPE_1__* local; } ;
struct rxrpc_connection {int rcu; int rx_queue; int proc_link; int cache_link; TYPE_3__* channels; TYPE_2__ params; } ;
struct TYPE_6__ {int call; } ;
struct TYPE_4__ {struct rxrpc_net* rxnet; } ;


 int ASSERT (int) ;
 int call_rcu (int *,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int rcu_access_pointer (int ) ;
 int rxrpc_destroy_connection ;
 int rxrpc_purge_queue (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void rxrpc_kill_connection(struct rxrpc_connection *conn)
{
 struct rxrpc_net *rxnet = conn->params.local->rxnet;

 ASSERT(!rcu_access_pointer(conn->channels[0].call) &&
        !rcu_access_pointer(conn->channels[1].call) &&
        !rcu_access_pointer(conn->channels[2].call) &&
        !rcu_access_pointer(conn->channels[3].call));
 ASSERT(list_empty(&conn->cache_link));

 write_lock(&rxnet->conn_lock);
 list_del_init(&conn->proc_link);
 write_unlock(&rxnet->conn_lock);





 rxrpc_purge_queue(&conn->rx_queue);





 call_rcu(&conn->rcu, rxrpc_destroy_connection);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxrpc_peer {int service_conn_lock; int service_conns; } ;
struct TYPE_2__ {struct rxrpc_peer* peer; } ;
struct rxrpc_connection {int service_node; int flags; TYPE_1__ params; } ;


 int RXRPC_CONN_IN_SERVICE_CONNS ;
 int rb_erase (int *,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int write_seqlock_bh (int *) ;
 int write_sequnlock_bh (int *) ;

void rxrpc_unpublish_service_conn(struct rxrpc_connection *conn)
{
 struct rxrpc_peer *peer = conn->params.peer;

 write_seqlock_bh(&peer->service_conn_lock);
 if (test_and_clear_bit(RXRPC_CONN_IN_SERVICE_CONNS, &conn->flags))
  rb_erase(&conn->service_node, &peer->service_conns);
 write_sequnlock_bh(&peer->service_conn_lock);
}

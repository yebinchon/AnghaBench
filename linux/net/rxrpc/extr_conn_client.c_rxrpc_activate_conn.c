
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_net {int active_client_conns; int nr_active_client_conns; } ;
struct rxrpc_connection {int cache_link; int cache_state; int flags; } ;


 int RXRPC_CONN_CLIENT_ACTIVE ;
 int RXRPC_CONN_CLIENT_UPGRADE ;
 int RXRPC_CONN_PROBING_FOR_UPGRADE ;
 int list_move_tail (int *,int *) ;
 int rxrpc_client_to_active ;
 int rxrpc_client_to_upgrade ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_rxrpc_client (struct rxrpc_connection*,int,int ) ;

__attribute__((used)) static void rxrpc_activate_conn(struct rxrpc_net *rxnet,
    struct rxrpc_connection *conn)
{
 if (test_bit(RXRPC_CONN_PROBING_FOR_UPGRADE, &conn->flags)) {
  trace_rxrpc_client(conn, -1, rxrpc_client_to_upgrade);
  conn->cache_state = RXRPC_CONN_CLIENT_UPGRADE;
 } else {
  trace_rxrpc_client(conn, -1, rxrpc_client_to_active);
  conn->cache_state = RXRPC_CONN_CLIENT_ACTIVE;
 }
 rxnet->nr_active_client_conns++;
 list_move_tail(&conn->cache_link, &rxnet->active_client_conns);
}

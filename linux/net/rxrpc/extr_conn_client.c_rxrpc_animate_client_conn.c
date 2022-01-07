
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_net {unsigned int nr_client_conns; int waiting_client_conns; int client_conn_cache_lock; } ;
struct rxrpc_connection {int cache_state; int cache_link; int flags; int debug_id; } ;


 int BUG () ;






 int RXRPC_CONN_COUNTED ;
 int _debug (char*) ;
 int _enter (char*,int ,int) ;
 int _leave (char*,int) ;
 int list_move_tail (int *,int *) ;
 int rxrpc_activate_conn (struct rxrpc_net*,struct rxrpc_connection*) ;
 int rxrpc_client_count ;
 int rxrpc_client_to_waiting ;
 unsigned int rxrpc_max_client_connections ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int ,int *) ;
 int trace_rxrpc_client (struct rxrpc_connection*,int,int ) ;

__attribute__((used)) static void rxrpc_animate_client_conn(struct rxrpc_net *rxnet,
          struct rxrpc_connection *conn)
{
 unsigned int nr_conns;

 _enter("%d,%d", conn->debug_id, conn->cache_state);

 if (conn->cache_state == 133 ||
     conn->cache_state == 129)
  goto out;

 spin_lock(&rxnet->client_conn_cache_lock);

 nr_conns = rxnet->nr_client_conns;
 if (!test_and_set_bit(RXRPC_CONN_COUNTED, &conn->flags)) {
  trace_rxrpc_client(conn, -1, rxrpc_client_count);
  rxnet->nr_client_conns = nr_conns + 1;
 }

 switch (conn->cache_state) {
 case 133:
 case 129:
 case 128:
  break;

 case 130:
 case 132:
 case 131:
  if (nr_conns >= rxrpc_max_client_connections)
   goto wait_for_capacity;
  goto activate_conn;

 default:
  BUG();
 }

out_unlock:
 spin_unlock(&rxnet->client_conn_cache_lock);
out:
 _leave(" [%d]", conn->cache_state);
 return;

activate_conn:
 _debug("activate");
 rxrpc_activate_conn(rxnet, conn);
 goto out_unlock;

wait_for_capacity:
 _debug("wait");
 trace_rxrpc_client(conn, -1, rxrpc_client_to_waiting);
 conn->cache_state = 128;
 list_move_tail(&conn->cache_link, &rxnet->waiting_client_conns);
 goto out_unlock;
}

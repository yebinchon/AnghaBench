
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_connection {int flags; } ;


 int RXRPC_CONN_EXPOSED ;
 int rxrpc_client_exposed ;
 int rxrpc_get_connection (struct rxrpc_connection*) ;
 int test_and_set_bit (int ,int *) ;
 int trace_rxrpc_client (struct rxrpc_connection*,unsigned int,int ) ;

__attribute__((used)) static void rxrpc_expose_client_conn(struct rxrpc_connection *conn,
         unsigned int channel)
{
 if (!test_and_set_bit(RXRPC_CONN_EXPOSED, &conn->flags)) {
  trace_rxrpc_client(conn, channel, rxrpc_client_exposed);
  rxrpc_get_connection(conn);
 }
}

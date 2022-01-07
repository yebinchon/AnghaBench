
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_connection {int dummy; } ;


 scalar_t__ rxrpc_conn_is_client (struct rxrpc_connection*) ;
 int rxrpc_put_client_conn (struct rxrpc_connection*) ;
 int rxrpc_put_service_conn (struct rxrpc_connection*) ;

__attribute__((used)) static inline void rxrpc_put_connection(struct rxrpc_connection *conn)
{
 if (!conn)
  return;

 if (rxrpc_conn_is_client(conn))
  rxrpc_put_client_conn(conn);
 else
  rxrpc_put_service_conn(conn);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_connection {int dummy; } ;


 int rxrpc_conn_is_client (struct rxrpc_connection const*) ;

__attribute__((used)) static inline bool rxrpc_conn_is_service(const struct rxrpc_connection *conn)
{
 return !rxrpc_conn_is_client(conn);
}

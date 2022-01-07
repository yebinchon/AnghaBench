
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_connection {int out_clientflag; } ;



__attribute__((used)) static inline bool rxrpc_conn_is_client(const struct rxrpc_connection *conn)
{
 return conn->out_clientflag;
}

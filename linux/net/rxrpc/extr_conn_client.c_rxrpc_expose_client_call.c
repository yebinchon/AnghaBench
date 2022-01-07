
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_connection {int flags; struct rxrpc_channel* channels; } ;
struct rxrpc_channel {scalar_t__ call_counter; } ;
struct rxrpc_call {unsigned int cid; int flags; struct rxrpc_connection* conn; } ;


 scalar_t__ INT_MAX ;
 int RXRPC_CALL_EXPOSED ;
 unsigned int RXRPC_CHANNELMASK ;
 int RXRPC_CONN_DONT_REUSE ;
 int rxrpc_expose_client_conn (struct rxrpc_connection*,unsigned int) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

void rxrpc_expose_client_call(struct rxrpc_call *call)
{
 unsigned int channel = call->cid & RXRPC_CHANNELMASK;
 struct rxrpc_connection *conn = call->conn;
 struct rxrpc_channel *chan = &conn->channels[channel];

 if (!test_and_set_bit(RXRPC_CALL_EXPOSED, &call->flags)) {





  chan->call_counter++;
  if (chan->call_counter >= INT_MAX)
   set_bit(RXRPC_CONN_DONT_REUSE, &conn->flags);
  rxrpc_expose_client_conn(conn, channel);
 }
}

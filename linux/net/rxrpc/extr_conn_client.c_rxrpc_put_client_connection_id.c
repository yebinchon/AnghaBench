
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cid; } ;
struct rxrpc_connection {TYPE_1__ proto; int flags; } ;


 int RXRPC_CIDSHIFT ;
 int RXRPC_CONN_HAS_IDR ;
 int idr_remove (int *,int) ;
 int rxrpc_client_conn_ids ;
 int rxrpc_conn_id_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rxrpc_put_client_connection_id(struct rxrpc_connection *conn)
{
 if (test_bit(RXRPC_CONN_HAS_IDR, &conn->flags)) {
  spin_lock(&rxrpc_conn_id_lock);
  idr_remove(&rxrpc_client_conn_ids,
      conn->proto.cid >> RXRPC_CIDSHIFT);
  spin_unlock(&rxrpc_conn_id_lock);
 }
}

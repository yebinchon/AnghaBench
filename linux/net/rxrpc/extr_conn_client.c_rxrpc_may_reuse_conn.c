
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rxrpc_net {scalar_t__ epoch; } ;
struct TYPE_4__ {scalar_t__ epoch; int cid; } ;
struct TYPE_6__ {TYPE_2__* local; } ;
struct rxrpc_connection {int flags; TYPE_1__ proto; TYPE_3__ params; } ;
struct TYPE_5__ {struct rxrpc_net* rxnet; } ;


 int RXRPC_CIDSHIFT ;
 int RXRPC_CONN_DONT_REUSE ;
 int idr_get_cursor (int *) ;
 int max (int,unsigned int) ;
 int rxrpc_client_conn_ids ;
 int rxrpc_max_client_connections ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool rxrpc_may_reuse_conn(struct rxrpc_connection *conn)
{
 struct rxrpc_net *rxnet = conn->params.local->rxnet;
 int id_cursor, id, distance, limit;

 if (test_bit(RXRPC_CONN_DONT_REUSE, &conn->flags))
  goto dont_reuse;

 if (conn->proto.epoch != rxnet->epoch)
  goto mark_dont_reuse;







 id_cursor = idr_get_cursor(&rxrpc_client_conn_ids);
 id = conn->proto.cid >> RXRPC_CIDSHIFT;
 distance = id - id_cursor;
 if (distance < 0)
  distance = -distance;
 limit = max(rxrpc_max_client_connections * 4, 1024U);
 if (distance > limit)
  goto mark_dont_reuse;

 return 1;

mark_dont_reuse:
 set_bit(RXRPC_CONN_DONT_REUSE, &conn->flags);
dont_reuse:
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rxrpc_net {int epoch; } ;
struct TYPE_4__ {int cid; int epoch; } ;
struct TYPE_5__ {TYPE_3__* local; } ;
struct rxrpc_connection {TYPE_1__ proto; int flags; TYPE_2__ params; } ;
typedef int gfp_t ;
struct TYPE_6__ {struct rxrpc_net* rxnet; } ;


 int GFP_NOWAIT ;
 int RXRPC_CIDSHIFT ;
 int RXRPC_CONN_HAS_IDR ;
 int _enter (char*) ;
 int _leave (char*,int) ;
 int idr_alloc_cyclic (int *,struct rxrpc_connection*,int,int,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int rxrpc_client_conn_ids ;
 int rxrpc_conn_id_lock ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int rxrpc_get_client_connection_id(struct rxrpc_connection *conn,
       gfp_t gfp)
{
 struct rxrpc_net *rxnet = conn->params.local->rxnet;
 int id;

 _enter("");

 idr_preload(gfp);
 spin_lock(&rxrpc_conn_id_lock);

 id = idr_alloc_cyclic(&rxrpc_client_conn_ids, conn,
         1, 0x40000000, GFP_NOWAIT);
 if (id < 0)
  goto error;

 spin_unlock(&rxrpc_conn_id_lock);
 idr_preload_end();

 conn->proto.epoch = rxnet->epoch;
 conn->proto.cid = id << RXRPC_CIDSHIFT;
 set_bit(RXRPC_CONN_HAS_IDR, &conn->flags);
 _leave(" [CID %x]", conn->proto.cid);
 return 0;

error:
 spin_unlock(&rxrpc_conn_id_lock);
 idr_preload_end();
 _leave(" = %d", id);
 return id;
}

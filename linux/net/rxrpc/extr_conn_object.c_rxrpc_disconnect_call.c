
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* peer; } ;
struct rxrpc_connection {int idle_timestamp; int channel_lock; TYPE_2__ params; } ;
struct rxrpc_call {struct rxrpc_connection* conn; int error_link; int cong_cwnd; TYPE_3__* peer; } ;
struct TYPE_6__ {int cong_cwnd; } ;
struct TYPE_4__ {int lock; } ;


 int __rxrpc_disconnect_call (struct rxrpc_connection*,struct rxrpc_call*) ;
 int hlist_del_rcu (int *) ;
 int jiffies ;
 void rxrpc_disconnect_client_call (struct rxrpc_call*) ;
 scalar_t__ rxrpc_is_client_call (struct rxrpc_call*) ;
 int rxrpc_put_connection (struct rxrpc_connection*) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;

void rxrpc_disconnect_call(struct rxrpc_call *call)
{
 struct rxrpc_connection *conn = call->conn;

 call->peer->cong_cwnd = call->cong_cwnd;

 spin_lock_bh(&conn->params.peer->lock);
 hlist_del_rcu(&call->error_link);
 spin_unlock_bh(&conn->params.peer->lock);

 if (rxrpc_is_client_call(call))
  return rxrpc_disconnect_client_call(call);

 spin_lock(&conn->channel_lock);
 __rxrpc_disconnect_call(conn, call);
 spin_unlock(&conn->channel_lock);

 call->conn = ((void*)0);
 conn->idle_timestamp = jiffies;
 rxrpc_put_connection(conn);
}

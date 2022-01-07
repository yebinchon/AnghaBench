
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sockaddr_rxrpc {int dummy; } ;
struct rxrpc_sock {int dummy; } ;
struct rxrpc_net {int client_conn_reaper; } ;
struct rxrpc_conn_parameters {TYPE_1__* local; } ;
struct rxrpc_call {TYPE_4__* conn; int error_link; int user_call_ID; int debug_id; } ;
typedef int gfp_t ;
struct TYPE_9__ {TYPE_2__* peer; } ;
struct TYPE_10__ {TYPE_3__ params; } ;
struct TYPE_8__ {int lock; int error_targets; } ;
struct TYPE_7__ {struct rxrpc_net* rxnet; } ;


 int _enter (char*,int ,int ) ;
 int _leave (char*,int) ;
 int hlist_add_head_rcu (int *,int *) ;
 int rxrpc_activate_channels (TYPE_4__*) ;
 int rxrpc_animate_client_conn (struct rxrpc_net*,TYPE_4__*) ;
 int rxrpc_client_chan_wait_failed ;
 int rxrpc_cull_active_client_conns (struct rxrpc_net*) ;
 int rxrpc_discard_expired_client_conns (int *) ;
 int rxrpc_disconnect_client_call (struct rxrpc_call*) ;
 int rxrpc_get_client_conn (struct rxrpc_sock*,struct rxrpc_call*,struct rxrpc_conn_parameters*,struct sockaddr_rxrpc*,int ) ;
 int rxrpc_wait_for_channel (struct rxrpc_call*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int trace_rxrpc_client (TYPE_4__*,int,int ) ;

int rxrpc_connect_call(struct rxrpc_sock *rx,
         struct rxrpc_call *call,
         struct rxrpc_conn_parameters *cp,
         struct sockaddr_rxrpc *srx,
         gfp_t gfp)
{
 struct rxrpc_net *rxnet = cp->local->rxnet;
 int ret;

 _enter("{%d,%lx},", call->debug_id, call->user_call_ID);

 rxrpc_discard_expired_client_conns(&rxnet->client_conn_reaper);
 rxrpc_cull_active_client_conns(rxnet);

 ret = rxrpc_get_client_conn(rx, call, cp, srx, gfp);
 if (ret < 0)
  goto out;

 rxrpc_animate_client_conn(rxnet, call->conn);
 rxrpc_activate_channels(call->conn);

 ret = rxrpc_wait_for_channel(call, gfp);
 if (ret < 0) {
  trace_rxrpc_client(call->conn, ret, rxrpc_client_chan_wait_failed);
  rxrpc_disconnect_client_call(call);
  goto out;
 }

 spin_lock_bh(&call->conn->params.peer->lock);
 hlist_add_head_rcu(&call->error_link,
      &call->conn->params.peer->error_targets);
 spin_unlock_bh(&call->conn->params.peer->lock);

out:
 _leave(" = %d", ret);
 return ret;
}

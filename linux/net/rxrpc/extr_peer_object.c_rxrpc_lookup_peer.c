
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_rxrpc {int transport; } ;
struct rxrpc_sock {int dummy; } ;
struct TYPE_2__ {int transport; } ;
struct rxrpc_peer {int usage; TYPE_1__ srx; int debug_id; int keepalive_link; int hash_link; } ;
struct rxrpc_net {int peer_hash_lock; int peer_keepalive_new; int peer_hash; } ;
struct rxrpc_local {struct rxrpc_net* rxnet; } ;
typedef int gfp_t ;


 struct rxrpc_peer* __rxrpc_lookup_peer_rcu (struct rxrpc_local*,struct sockaddr_rxrpc*,unsigned long) ;
 int _enter (char*,int *) ;
 int _leave (char*,...) ;
 int _net (char*,int ,int *) ;
 int atomic_read (int *) ;
 int hash_add_rcu (int ,int *,unsigned long) ;
 int kfree (struct rxrpc_peer*) ;
 int list_add_tail (int *,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct rxrpc_peer* rxrpc_create_peer (struct rxrpc_sock*,struct rxrpc_local*,struct sockaddr_rxrpc*,unsigned long,int ) ;
 int rxrpc_get_peer_maybe (struct rxrpc_peer*) ;
 unsigned long rxrpc_peer_hash_key (struct rxrpc_local*,struct sockaddr_rxrpc*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct rxrpc_peer *rxrpc_lookup_peer(struct rxrpc_sock *rx,
         struct rxrpc_local *local,
         struct sockaddr_rxrpc *srx, gfp_t gfp)
{
 struct rxrpc_peer *peer, *candidate;
 struct rxrpc_net *rxnet = local->rxnet;
 unsigned long hash_key = rxrpc_peer_hash_key(local, srx);

 _enter("{%pISp}", &srx->transport);


 rcu_read_lock();
 peer = __rxrpc_lookup_peer_rcu(local, srx, hash_key);
 if (peer && !rxrpc_get_peer_maybe(peer))
  peer = ((void*)0);
 rcu_read_unlock();

 if (!peer) {



  candidate = rxrpc_create_peer(rx, local, srx, hash_key, gfp);
  if (!candidate) {
   _leave(" = NULL [nomem]");
   return ((void*)0);
  }

  spin_lock_bh(&rxnet->peer_hash_lock);


  peer = __rxrpc_lookup_peer_rcu(local, srx, hash_key);
  if (peer && !rxrpc_get_peer_maybe(peer))
   peer = ((void*)0);
  if (!peer) {
   hash_add_rcu(rxnet->peer_hash,
         &candidate->hash_link, hash_key);
   list_add_tail(&candidate->keepalive_link,
          &rxnet->peer_keepalive_new);
  }

  spin_unlock_bh(&rxnet->peer_hash_lock);

  if (peer)
   kfree(candidate);
  else
   peer = candidate;
 }

 _net("PEER %d {%pISp}", peer->debug_id, &peer->srx.transport);

 _leave(" = %p {u=%d}", peer, atomic_read(&peer->usage));
 return peer;
}

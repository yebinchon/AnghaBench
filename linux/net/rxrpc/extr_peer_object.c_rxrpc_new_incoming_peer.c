
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_sock {int dummy; } ;
struct rxrpc_peer {int keepalive_link; int hash_link; int srx; } ;
struct rxrpc_net {int peer_hash_lock; int peer_keepalive_new; int peer_hash; } ;
struct rxrpc_local {struct rxrpc_net* rxnet; } ;


 int hash_add_rcu (int ,int *,unsigned long) ;
 int list_add_tail (int *,int *) ;
 int rxrpc_init_peer (struct rxrpc_sock*,struct rxrpc_peer*,unsigned long) ;
 unsigned long rxrpc_peer_hash_key (struct rxrpc_local*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rxrpc_new_incoming_peer(struct rxrpc_sock *rx, struct rxrpc_local *local,
        struct rxrpc_peer *peer)
{
 struct rxrpc_net *rxnet = local->rxnet;
 unsigned long hash_key;

 hash_key = rxrpc_peer_hash_key(local, &peer->srx);
 rxrpc_init_peer(rx, peer, hash_key);

 spin_lock(&rxnet->peer_hash_lock);
 hash_add_rcu(rxnet->peer_hash, &peer->hash_link, hash_key);
 list_add_tail(&peer->keepalive_link, &rxnet->peer_keepalive_new);
 spin_unlock(&rxnet->peer_hash_lock);
}

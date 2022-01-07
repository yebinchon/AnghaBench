
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxrpc_peer {TYPE_1__* local; int keepalive_link; int hash_link; int error_targets; } ;
struct rxrpc_net {int peer_hash_lock; } ;
struct TYPE_2__ {struct rxrpc_net* rxnet; } ;


 int ASSERT (int ) ;
 int hash_del_rcu (int *) ;
 int hlist_empty (int *) ;
 int kfree_rcu (struct rxrpc_peer*,int ) ;
 int list_del_init (int *) ;
 int rcu ;
 int rxrpc_put_local (TYPE_1__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void __rxrpc_put_peer(struct rxrpc_peer *peer)
{
 struct rxrpc_net *rxnet = peer->local->rxnet;

 ASSERT(hlist_empty(&peer->error_targets));

 spin_lock_bh(&rxnet->peer_hash_lock);
 hash_del_rcu(&peer->hash_link);
 list_del_init(&peer->keepalive_link);
 spin_unlock_bh(&rxnet->peer_hash_lock);

 rxrpc_put_local(peer->local);
 kfree_rcu(peer, rcu);
}

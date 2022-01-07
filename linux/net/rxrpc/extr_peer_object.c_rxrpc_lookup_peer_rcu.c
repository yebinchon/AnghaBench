
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_rxrpc {int dummy; } ;
struct TYPE_2__ {int transport; } ;
struct rxrpc_peer {int usage; TYPE_1__ srx; int debug_id; } ;
struct rxrpc_local {int dummy; } ;


 struct rxrpc_peer* __rxrpc_lookup_peer_rcu (struct rxrpc_local*,struct sockaddr_rxrpc const*,unsigned long) ;
 int _leave (char*,struct rxrpc_peer*,int ) ;
 int _net (char*,int ,int *) ;
 int atomic_read (int *) ;
 unsigned long rxrpc_peer_hash_key (struct rxrpc_local*,struct sockaddr_rxrpc const*) ;

struct rxrpc_peer *rxrpc_lookup_peer_rcu(struct rxrpc_local *local,
      const struct sockaddr_rxrpc *srx)
{
 struct rxrpc_peer *peer;
 unsigned long hash_key = rxrpc_peer_hash_key(local, srx);

 peer = __rxrpc_lookup_peer_rcu(local, srx, hash_key);
 if (peer) {
  _net("PEER %d {%pISp}", peer->debug_id, &peer->srx.transport);
  _leave(" = %p {u=%d}", peer, atomic_read(&peer->usage));
 }
 return peer;
}

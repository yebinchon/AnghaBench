
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_rxrpc {int dummy; } ;
struct rxrpc_sock {int dummy; } ;
struct rxrpc_peer {int srx; } ;
struct rxrpc_local {int dummy; } ;
typedef int gfp_t ;


 int _enter (char*) ;
 int _leave (char*,struct rxrpc_peer*) ;
 int memcpy (int *,struct sockaddr_rxrpc*,int) ;
 struct rxrpc_peer* rxrpc_alloc_peer (struct rxrpc_local*,int ) ;
 int rxrpc_init_peer (struct rxrpc_sock*,struct rxrpc_peer*,unsigned long) ;

__attribute__((used)) static struct rxrpc_peer *rxrpc_create_peer(struct rxrpc_sock *rx,
         struct rxrpc_local *local,
         struct sockaddr_rxrpc *srx,
         unsigned long hash_key,
         gfp_t gfp)
{
 struct rxrpc_peer *peer;

 _enter("");

 peer = rxrpc_alloc_peer(local, gfp);
 if (peer) {
  memcpy(&peer->srx, srx, sizeof(*srx));
  rxrpc_init_peer(rx, peer, hash_key);
 }

 _leave(" = %p", peer);
 return peer;
}

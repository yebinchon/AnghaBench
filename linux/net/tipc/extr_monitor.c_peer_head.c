
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_peer {int is_head; } ;


 struct tipc_peer* peer_prev (struct tipc_peer*) ;

__attribute__((used)) static struct tipc_peer *peer_head(struct tipc_peer *peer)
{
 while (!peer->is_head)
  peer = peer_prev(peer);
 return peer;
}

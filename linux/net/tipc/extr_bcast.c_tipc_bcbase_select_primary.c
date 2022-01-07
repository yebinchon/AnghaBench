
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_bc_base {int primary_bearer; int bcast_support; int* dests; int link; } ;
struct net {int dummy; } ;


 int INVALID_BEARER_ID ;
 int MAX_BEARERS ;
 struct tipc_bc_base* tipc_bc_base (struct net*) ;
 int tipc_bearer_bcast_support (struct net*,int) ;
 int tipc_bearer_mtu (struct net*,int) ;
 int tipc_link_bc_peers (int ) ;
 int tipc_link_mtu (int ) ;
 int tipc_link_set_mtu (int ,int) ;
 int tipc_own_addr (struct net*) ;

__attribute__((used)) static void tipc_bcbase_select_primary(struct net *net)
{
 struct tipc_bc_base *bb = tipc_bc_base(net);
 int all_dests = tipc_link_bc_peers(bb->link);
 int i, mtu, prim;

 bb->primary_bearer = INVALID_BEARER_ID;
 bb->bcast_support = 1;

 if (!all_dests)
  return;

 for (i = 0; i < MAX_BEARERS; i++) {
  if (!bb->dests[i])
   continue;

  mtu = tipc_bearer_mtu(net, i);
  if (mtu < tipc_link_mtu(bb->link))
   tipc_link_set_mtu(bb->link, mtu);
  bb->bcast_support &= tipc_bearer_bcast_support(net, i);
  if (bb->dests[i] < all_dests)
   continue;

  bb->primary_bearer = i;


  if ((i ^ tipc_own_addr(net)) & 1)
   break;
 }
 prim = bb->primary_bearer;
 if (prim != INVALID_BEARER_ID)
  bb->bcast_support = tipc_bearer_bcast_support(net, prim);
}

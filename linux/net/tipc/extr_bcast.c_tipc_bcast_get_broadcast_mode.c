
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_bc_base {scalar_t__ rcast_support; scalar_t__ bcast_support; scalar_t__ force_rcast; scalar_t__ force_bcast; } ;
struct net {int dummy; } ;


 int BCLINK_MODE_BCAST ;
 int BCLINK_MODE_RCAST ;
 int BCLINK_MODE_SEL ;
 struct tipc_bc_base* tipc_bc_base (struct net*) ;

u32 tipc_bcast_get_broadcast_mode(struct net *net)
{
 struct tipc_bc_base *bb = tipc_bc_base(net);

 if (bb->force_bcast)
  return BCLINK_MODE_BCAST;

 if (bb->force_rcast)
  return BCLINK_MODE_RCAST;

 if (bb->bcast_support && bb->rcast_support)
  return BCLINK_MODE_SEL;

 return 0;
}

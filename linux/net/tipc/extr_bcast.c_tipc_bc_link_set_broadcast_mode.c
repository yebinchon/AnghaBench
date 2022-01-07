
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_bc_base {int force_bcast; int force_rcast; int rcast_support; int bcast_support; } ;
struct net {int dummy; } ;





 int EINVAL ;
 int ENOPROTOOPT ;
 struct tipc_bc_base* tipc_bc_base (struct net*) ;

__attribute__((used)) static int tipc_bc_link_set_broadcast_mode(struct net *net, u32 bc_mode)
{
 struct tipc_bc_base *bb = tipc_bc_base(net);

 switch (bc_mode) {
 case 130:
  if (!bb->bcast_support)
   return -ENOPROTOOPT;

  bb->force_bcast = 1;
  bb->force_rcast = 0;
  break;
 case 129:
  if (!bb->rcast_support)
   return -ENOPROTOOPT;

  bb->force_bcast = 0;
  bb->force_rcast = 1;
  break;
 case 128:
  if (!bb->bcast_support || !bb->rcast_support)
   return -ENOPROTOOPT;

  bb->force_bcast = 0;
  bb->force_rcast = 0;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}

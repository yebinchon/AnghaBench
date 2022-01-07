
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_bc_base {int rc_ratio; } ;
struct net {int dummy; } ;


 struct tipc_bc_base* tipc_bc_base (struct net*) ;

u32 tipc_bcast_get_broadcast_ratio(struct net *net)
{
 struct tipc_bc_base *bb = tipc_bc_base(net);

 return bb->rc_ratio;
}

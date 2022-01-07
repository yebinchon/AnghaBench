
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_bc_base {int * dests; } ;
struct net {int dummy; } ;


 struct tipc_bc_base* tipc_bc_base (struct net*) ;
 int tipc_bcast_lock (struct net*) ;
 int tipc_bcast_unlock (struct net*) ;
 int tipc_bcbase_select_primary (struct net*) ;

void tipc_bcast_dec_bearer_dst_cnt(struct net *net, int bearer_id)
{
 struct tipc_bc_base *bb = tipc_bc_base(net);

 tipc_bcast_lock(net);
 bb->dests[bearer_id]--;
 tipc_bcbase_select_primary(net);
 tipc_bcast_unlock(net);
}

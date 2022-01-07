
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_bc_base {int bc_threshold; int rc_ratio; } ;
struct net {int dummy; } ;


 struct tipc_bc_base* tipc_bc_base (struct net*) ;
 int tipc_bc_sndlink (struct net*) ;
 int tipc_link_bc_peers (int ) ;

__attribute__((used)) static void tipc_bcbase_calc_bc_threshold(struct net *net)
{
 struct tipc_bc_base *bb = tipc_bc_base(net);
 int cluster_size = tipc_link_bc_peers(tipc_bc_sndlink(net));

 bb->bc_threshold = 1 + (cluster_size * bb->rc_ratio / 100);
}

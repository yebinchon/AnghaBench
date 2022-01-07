
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct net {int dummy; } ;


 struct tipc_link* tipc_bc_sndlink (struct net*) ;
 int tipc_bcast_lock (struct net*) ;
 int tipc_bcast_unlock (struct net*) ;
 int tipc_bcbase_calc_bc_threshold (struct net*) ;
 int tipc_bcbase_select_primary (struct net*) ;
 int tipc_link_add_bc_peer (struct tipc_link*,struct tipc_link*,struct sk_buff_head*) ;

void tipc_bcast_add_peer(struct net *net, struct tipc_link *uc_l,
    struct sk_buff_head *xmitq)
{
 struct tipc_link *snd_l = tipc_bc_sndlink(net);

 tipc_bcast_lock(net);
 tipc_link_add_bc_peer(snd_l, uc_l, xmitq);
 tipc_bcbase_select_primary(net);
 tipc_bcbase_calc_bc_threshold(net);
 tipc_bcast_unlock(net);
}

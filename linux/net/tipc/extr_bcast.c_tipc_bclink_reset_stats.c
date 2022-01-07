
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {int dummy; } ;
struct net {int dummy; } ;


 int ENOPROTOOPT ;
 struct tipc_link* tipc_bc_sndlink (struct net*) ;
 int tipc_bcast_lock (struct net*) ;
 int tipc_bcast_unlock (struct net*) ;
 int tipc_link_reset_stats (struct tipc_link*) ;

int tipc_bclink_reset_stats(struct net *net)
{
 struct tipc_link *l = tipc_bc_sndlink(net);

 if (!l)
  return -ENOPROTOOPT;

 tipc_bcast_lock(net);
 tipc_link_reset_stats(l);
 tipc_bcast_unlock(net);
 return 0;
}

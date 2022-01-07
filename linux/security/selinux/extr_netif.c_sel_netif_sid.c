
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int sid; } ;
struct sel_netif {TYPE_1__ nsec; } ;
struct net {int dummy; } ;


 scalar_t__ likely (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sel_netif* sel_netif_find (struct net*,int) ;
 int sel_netif_sid_slow (struct net*,int,int *) ;

int sel_netif_sid(struct net *ns, int ifindex, u32 *sid)
{
 struct sel_netif *netif;

 rcu_read_lock();
 netif = sel_netif_find(ns, ifindex);
 if (likely(netif != ((void*)0))) {
  *sid = netif->nsec.sid;
  rcu_read_unlock();
  return 0;
 }
 rcu_read_unlock();

 return sel_netif_sid_slow(ns, ifindex, sid);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifindex; int ns; } ;
struct sel_netif {int list; TYPE_1__ nsec; } ;


 int ENOSPC ;
 scalar_t__ SEL_NETIF_HASH_MAX ;
 int list_add_rcu (int *,int *) ;
 int * sel_netif_hash ;
 int sel_netif_hashfn (int ,int ) ;
 scalar_t__ sel_netif_total ;

__attribute__((used)) static int sel_netif_insert(struct sel_netif *netif)
{
 int idx;

 if (sel_netif_total >= SEL_NETIF_HASH_MAX)
  return -ENOSPC;

 idx = sel_netif_hashfn(netif->nsec.ns, netif->nsec.ifindex);
 list_add_rcu(&netif->list, &sel_netif_hash[idx]);
 sel_netif_total++;

 return 0;
}

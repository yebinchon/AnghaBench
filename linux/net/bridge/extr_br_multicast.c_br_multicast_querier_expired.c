
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int multicast_lock; int dev; } ;
struct bridge_mcast_own_query {int dummy; } ;


 int BROPT_MULTICAST_ENABLED ;
 int br_multicast_start_querier (struct net_bridge*,struct bridge_mcast_own_query*) ;
 int br_opt_get (struct net_bridge*,int ) ;
 int netif_running (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void br_multicast_querier_expired(struct net_bridge *br,
      struct bridge_mcast_own_query *query)
{
 spin_lock(&br->multicast_lock);
 if (!netif_running(br->dev) || !br_opt_get(br, BROPT_MULTICAST_ENABLED))
  goto out;

 br_multicast_start_querier(br, query);

out:
 spin_unlock(&br->multicast_lock);
}

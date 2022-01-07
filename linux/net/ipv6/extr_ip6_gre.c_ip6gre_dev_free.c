
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tstats; } ;
struct ip6_tnl {int dst_cache; int gro_cells; } ;


 int dst_cache_destroy (int *) ;
 int free_percpu (int ) ;
 int gro_cells_destroy (int *) ;
 struct ip6_tnl* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ip6gre_dev_free(struct net_device *dev)
{
 struct ip6_tnl *t = netdev_priv(dev);

 gro_cells_destroy(&t->gro_cells);
 dst_cache_destroy(&t->dst_cache);
 free_percpu(dev->tstats);
}

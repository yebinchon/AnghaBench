
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tstats; } ;
struct ip_tunnel {int dst_cache; int gro_cells; } ;


 int dst_cache_destroy (int *) ;
 int free_percpu (int ) ;
 int gro_cells_destroy (int *) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ip_tunnel_dev_free(struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);

 gro_cells_destroy(&tunnel->gro_cells);
 dst_cache_destroy(&tunnel->dst_cache);
 free_percpu(dev->tstats);
}

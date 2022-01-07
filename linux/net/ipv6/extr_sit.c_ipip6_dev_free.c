
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tstats; } ;
struct ip_tunnel {int dst_cache; } ;


 int dst_cache_destroy (int *) ;
 int free_percpu (int ) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ipip6_dev_free(struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);

 dst_cache_destroy(&tunnel->dst_cache);
 free_percpu(dev->tstats);
}

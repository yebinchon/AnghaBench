
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_net {int nfs_dns_resolve; } ;
struct net {int dummy; } ;


 int cache_destroy_net (int ,struct net*) ;
 struct nfs_net* net_generic (struct net*,int ) ;
 int nfs_cache_unregister_net (struct net*,int ) ;
 int nfs_net_id ;

void nfs_dns_resolver_cache_destroy(struct net *net)
{
 struct nfs_net *nn = net_generic(net, nfs_net_id);

 nfs_cache_unregister_net(net, nn->nfs_dns_resolve);
 cache_destroy_net(nn->nfs_dns_resolve, net);
}

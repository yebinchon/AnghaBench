
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int nametoid_cache; int idtoname_cache; } ;
struct net {int dummy; } ;


 int cache_destroy_net (int ,struct net*) ;
 int cache_unregister_net (int ,struct net*) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_net_id ;

void
nfsd_idmap_shutdown(struct net *net)
{
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 cache_unregister_net(nn->idtoname_cache, net);
 cache_unregister_net(nn->nametoid_cache, net);
 cache_destroy_net(nn->idtoname_cache, net);
 cache_destroy_net(nn->nametoid_cache, net);
}

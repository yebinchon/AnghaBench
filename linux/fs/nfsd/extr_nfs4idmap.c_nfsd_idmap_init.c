
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {void* idtoname_cache; void* nametoid_cache; } ;
struct net {int dummy; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 void* cache_create_net (int *,struct net*) ;
 int cache_destroy_net (void*,struct net*) ;
 int cache_register_net (void*,struct net*) ;
 int cache_unregister_net (void*,struct net*) ;
 int idtoname_cache_template ;
 int nametoid_cache_template ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_net_id ;

int
nfsd_idmap_init(struct net *net)
{
 int rv;
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 nn->idtoname_cache = cache_create_net(&idtoname_cache_template, net);
 if (IS_ERR(nn->idtoname_cache))
  return PTR_ERR(nn->idtoname_cache);
 rv = cache_register_net(nn->idtoname_cache, net);
 if (rv)
  goto destroy_idtoname_cache;
 nn->nametoid_cache = cache_create_net(&nametoid_cache_template, net);
 if (IS_ERR(nn->nametoid_cache)) {
  rv = PTR_ERR(nn->nametoid_cache);
  goto unregister_idtoname_cache;
 }
 rv = cache_register_net(nn->nametoid_cache, net);
 if (rv)
  goto destroy_nametoid_cache;
 return 0;

destroy_nametoid_cache:
 cache_destroy_net(nn->nametoid_cache, net);
unregister_idtoname_cache:
 cache_unregister_net(nn->idtoname_cache, net);
destroy_idtoname_cache:
 cache_destroy_net(nn->idtoname_cache, net);
 return rv;
}

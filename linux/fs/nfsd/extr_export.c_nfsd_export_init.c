
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_net {void* svc_export_cache; void* svc_expkey_cache; } ;
struct TYPE_2__ {int inum; } ;
struct net {TYPE_1__ ns; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 void* cache_create_net (int *,struct net*) ;
 int cache_destroy_net (void*,struct net*) ;
 int cache_register_net (void*,struct net*) ;
 int cache_unregister_net (void*,struct net*) ;
 int dprintk (char*,int ) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_net_id ;
 int svc_expkey_cache_template ;
 int svc_export_cache_template ;

int
nfsd_export_init(struct net *net)
{
 int rv;
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 dprintk("nfsd: initializing export module (net: %x).\n", net->ns.inum);

 nn->svc_export_cache = cache_create_net(&svc_export_cache_template, net);
 if (IS_ERR(nn->svc_export_cache))
  return PTR_ERR(nn->svc_export_cache);
 rv = cache_register_net(nn->svc_export_cache, net);
 if (rv)
  goto destroy_export_cache;

 nn->svc_expkey_cache = cache_create_net(&svc_expkey_cache_template, net);
 if (IS_ERR(nn->svc_expkey_cache)) {
  rv = PTR_ERR(nn->svc_expkey_cache);
  goto unregister_export_cache;
 }
 rv = cache_register_net(nn->svc_expkey_cache, net);
 if (rv)
  goto destroy_expkey_cache;
 return 0;

destroy_expkey_cache:
 cache_destroy_net(nn->svc_expkey_cache, net);
unregister_export_cache:
 cache_unregister_net(nn->svc_export_cache, net);
destroy_export_cache:
 cache_destroy_net(nn->svc_export_cache, net);
 return rv;
}

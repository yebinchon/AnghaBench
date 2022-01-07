
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_net {int svc_export_cache; int svc_expkey_cache; } ;
struct TYPE_2__ {int inum; } ;
struct net {TYPE_1__ ns; } ;


 int cache_destroy_net (int ,struct net*) ;
 int cache_unregister_net (int ,struct net*) ;
 int dprintk (char*,int ) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_net_id ;
 int svcauth_unix_purge (struct net*) ;

void
nfsd_export_shutdown(struct net *net)
{
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 dprintk("nfsd: shutting down export module (net: %x).\n", net->ns.inum);

 cache_unregister_net(nn->svc_expkey_cache, net);
 cache_unregister_net(nn->svc_export_cache, net);
 cache_destroy_net(nn->svc_expkey_cache, net);
 cache_destroy_net(nn->svc_export_cache, net);
 svcauth_unix_purge(net);

 dprintk("nfsd: export shutdown complete (net: %x).\n", net->ns.inum);
}

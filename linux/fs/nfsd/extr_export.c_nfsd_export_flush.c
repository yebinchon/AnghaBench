
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int svc_export_cache; int svc_expkey_cache; } ;
struct net {int dummy; } ;


 int cache_purge (int ) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_net_id ;

void
nfsd_export_flush(struct net *net)
{
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 cache_purge(nn->svc_expkey_cache);
 cache_purge(nn->svc_export_cache);
}

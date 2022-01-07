
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_net {int nfs_dns_resolve; } ;
struct net {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int cache_create_net (int *,struct net*) ;
 int cache_destroy_net (int ,struct net*) ;
 struct nfs_net* net_generic (struct net*,int ) ;
 int nfs_cache_register_net (struct net*,int ) ;
 int nfs_dns_resolve_template ;
 int nfs_net_id ;

int nfs_dns_resolver_cache_init(struct net *net)
{
 int err;
 struct nfs_net *nn = net_generic(net, nfs_net_id);

 nn->nfs_dns_resolve = cache_create_net(&nfs_dns_resolve_template, net);
 if (IS_ERR(nn->nfs_dns_resolve))
  return PTR_ERR(nn->nfs_dns_resolve);

 err = nfs_cache_register_net(net, nn->nfs_dns_resolve);
 if (err)
  goto err_reg;
 return 0;

err_reg:
 cache_destroy_net(nn->nfs_dns_resolve, net);
 return err;
}

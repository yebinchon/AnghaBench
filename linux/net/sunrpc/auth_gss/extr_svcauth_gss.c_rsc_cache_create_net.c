
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {struct cache_detail* rsc_cache; } ;
struct net {int dummy; } ;
struct cache_detail {int dummy; } ;


 scalar_t__ IS_ERR (struct cache_detail*) ;
 int PTR_ERR (struct cache_detail*) ;
 struct cache_detail* cache_create_net (int *,struct net*) ;
 int cache_destroy_net (struct cache_detail*,struct net*) ;
 int cache_register_net (struct cache_detail*,struct net*) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int rsc_cache_template ;
 int sunrpc_net_id ;

__attribute__((used)) static int rsc_cache_create_net(struct net *net)
{
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);
 struct cache_detail *cd;
 int err;

 cd = cache_create_net(&rsc_cache_template, net);
 if (IS_ERR(cd))
  return PTR_ERR(cd);
 err = cache_register_net(cd, net);
 if (err) {
  cache_destroy_net(cd, net);
  return err;
 }
 sn->rsc_cache = cd;
 return 0;
}

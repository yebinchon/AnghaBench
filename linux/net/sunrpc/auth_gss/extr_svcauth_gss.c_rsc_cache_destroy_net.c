
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {struct cache_detail* rsc_cache; } ;
struct net {int dummy; } ;
struct cache_detail {int dummy; } ;


 int cache_destroy_net (struct cache_detail*,struct net*) ;
 int cache_purge (struct cache_detail*) ;
 int cache_unregister_net (struct cache_detail*,struct net*) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int sunrpc_net_id ;

__attribute__((used)) static void rsc_cache_destroy_net(struct net *net)
{
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);
 struct cache_detail *cd = sn->rsc_cache;

 sn->rsc_cache = ((void*)0);
 cache_purge(cd);
 cache_unregister_net(cd, net);
 cache_destroy_net(cd, net);
}

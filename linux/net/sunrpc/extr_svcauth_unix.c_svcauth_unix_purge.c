
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int ip_map_cache; } ;
struct net {int dummy; } ;


 int cache_purge (int ) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int sunrpc_net_id ;

void svcauth_unix_purge(struct net *net)
{
 struct sunrpc_net *sn;

 sn = net_generic(net, sunrpc_net_id);
 cache_purge(sn->ip_map_cache);
}

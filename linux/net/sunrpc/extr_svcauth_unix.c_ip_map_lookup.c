
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int ip_map_cache; } ;
struct net {int dummy; } ;
struct ip_map {int dummy; } ;
struct in6_addr {int dummy; } ;


 struct ip_map* __ip_map_lookup (int ,char*,struct in6_addr*) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int sunrpc_net_id ;

__attribute__((used)) static inline struct ip_map *ip_map_lookup(struct net *net, char *class,
  struct in6_addr *addr)
{
 struct sunrpc_net *sn;

 sn = net_generic(net, sunrpc_net_id);
 return __ip_map_lookup(sn->ip_map_cache, class, addr);
}

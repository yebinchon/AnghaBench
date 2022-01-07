
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct unix_domain {int dummy; } ;
struct sunrpc_net {int ip_map_cache; } ;
struct net {int dummy; } ;
struct ip_map {int dummy; } ;


 int __ip_map_update (int ,struct ip_map*,struct unix_domain*,int ) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int sunrpc_net_id ;

__attribute__((used)) static inline int ip_map_update(struct net *net, struct ip_map *ipm,
  struct unix_domain *udom, time_t expiry)
{
 struct sunrpc_net *sn;

 sn = net_generic(net, sunrpc_net_id);
 return __ip_map_update(sn->ip_map_cache, ipm, udom, expiry);
}

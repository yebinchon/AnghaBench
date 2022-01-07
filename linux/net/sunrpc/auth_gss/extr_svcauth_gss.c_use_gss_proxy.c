
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int use_gss_proxy; } ;
struct net {int dummy; } ;


 struct sunrpc_net* net_generic (struct net*,int ) ;
 int set_gss_proxy (struct net*,int ) ;
 int sunrpc_net_id ;

__attribute__((used)) static bool use_gss_proxy(struct net *net)
{
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);


 if (sn->use_gss_proxy == -1)
  set_gss_proxy(net, 0);
 return sn->use_gss_proxy;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm6_tunnel_net {int dummy; } ;
struct net {int dummy; } ;


 struct xfrm6_tunnel_net* net_generic (struct net*,int ) ;
 int xfrm6_tunnel_net_id ;

__attribute__((used)) static inline struct xfrm6_tunnel_net *xfrm6_tunnel_pernet(struct net *net)
{
 return net_generic(net, xfrm6_tunnel_net_id);
}

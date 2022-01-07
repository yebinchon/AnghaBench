
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfrm_address_t ;
struct TYPE_2__ {int saddr; } ;
struct xfrm_state {TYPE_1__ props; } ;
struct net {int dummy; } ;


 int xfrm6_tunnel_free_spi (struct net*,int *) ;
 struct net* xs_net (struct xfrm_state*) ;

__attribute__((used)) static void xfrm6_tunnel_destroy(struct xfrm_state *x)
{
 struct net *net = xs_net(x);

 xfrm6_tunnel_free_spi(net, (xfrm_address_t *)&x->props.saddr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef int u32 ;
struct TYPE_6__ {int daddr; } ;
struct TYPE_5__ {int saddr; } ;
struct TYPE_4__ {int m; int v; } ;
struct xfrm_state {int tunnel_users; struct xfrm_state* tunnel; TYPE_3__ id; TYPE_2__ props; TYPE_1__ mark; } ;
struct net {int dummy; } ;
typedef scalar_t__ __be32 ;


 int AF_INET6 ;
 int EINVAL ;
 int IPPROTO_IPV6 ;
 int atomic_inc (int *) ;
 struct xfrm_state* ipcomp6_tunnel_create (struct xfrm_state*) ;
 scalar_t__ xfrm6_tunnel_spi_lookup (struct net*,int *) ;
 int xfrm_state_hold (struct xfrm_state*) ;
 int xfrm_state_insert (struct xfrm_state*) ;
 struct xfrm_state* xfrm_state_lookup (struct net*,int,int *,scalar_t__,int ,int ) ;
 struct net* xs_net (struct xfrm_state*) ;

__attribute__((used)) static int ipcomp6_tunnel_attach(struct xfrm_state *x)
{
 struct net *net = xs_net(x);
 int err = 0;
 struct xfrm_state *t = ((void*)0);
 __be32 spi;
 u32 mark = x->mark.m & x->mark.v;

 spi = xfrm6_tunnel_spi_lookup(net, (xfrm_address_t *)&x->props.saddr);
 if (spi)
  t = xfrm_state_lookup(net, mark, (xfrm_address_t *)&x->id.daddr,
           spi, IPPROTO_IPV6, AF_INET6);
 if (!t) {
  t = ipcomp6_tunnel_create(x);
  if (!t) {
   err = -EINVAL;
   goto out;
  }
  xfrm_state_insert(t);
  xfrm_state_hold(t);
 }
 x->tunnel = t;
 atomic_inc(&t->tunnel_users);

out:
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef int u32 ;
struct TYPE_8__ {int a4; } ;
struct TYPE_9__ {TYPE_3__ saddr; } ;
struct TYPE_6__ {int a4; } ;
struct TYPE_7__ {TYPE_1__ daddr; } ;
struct TYPE_10__ {int v; int m; } ;
struct xfrm_state {int tunnel_users; struct xfrm_state* tunnel; TYPE_4__ props; TYPE_2__ id; TYPE_5__ mark; } ;
struct net {int dummy; } ;


 int AF_INET ;
 int EINVAL ;
 int IPPROTO_IPIP ;
 int atomic_inc (int *) ;
 struct xfrm_state* ipcomp_tunnel_create (struct xfrm_state*) ;
 int xfrm_state_hold (struct xfrm_state*) ;
 int xfrm_state_insert (struct xfrm_state*) ;
 struct xfrm_state* xfrm_state_lookup (struct net*,int,int *,int ,int ,int ) ;
 struct net* xs_net (struct xfrm_state*) ;

__attribute__((used)) static int ipcomp_tunnel_attach(struct xfrm_state *x)
{
 struct net *net = xs_net(x);
 int err = 0;
 struct xfrm_state *t;
 u32 mark = x->mark.v & x->mark.m;

 t = xfrm_state_lookup(net, mark, (xfrm_address_t *)&x->id.daddr.a4,
         x->props.saddr.a4, IPPROTO_IPIP, AF_INET);
 if (!t) {
  t = ipcomp_tunnel_create(x);
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

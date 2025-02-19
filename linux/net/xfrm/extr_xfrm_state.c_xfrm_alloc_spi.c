
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int family; } ;
struct TYPE_8__ {int proto; scalar_t__ spi; int daddr; } ;
struct TYPE_7__ {scalar_t__ state; } ;
struct TYPE_6__ {int v; int m; } ;
struct xfrm_state {int lock; int byspi; TYPE_4__ props; TYPE_3__ id; TYPE_2__ km; TYPE_1__ mark; } ;
struct TYPE_10__ {int xfrm_state_lock; scalar_t__ state_byspi; } ;
struct net {TYPE_5__ xfrm; } ;
typedef scalar_t__ __be32 ;


 int ENOENT ;
 scalar_t__ XFRM_STATE_DEAD ;
 int hlist_add_head_rcu (int *,scalar_t__) ;
 scalar_t__ htonl (int) ;
 int prandom_u32 () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 unsigned int xfrm_spi_hash (struct net*,int *,scalar_t__,int ,int ) ;
 struct xfrm_state* xfrm_state_lookup (struct net*,int,int *,scalar_t__,int ,int ) ;
 int xfrm_state_put (struct xfrm_state*) ;
 struct net* xs_net (struct xfrm_state*) ;

int xfrm_alloc_spi(struct xfrm_state *x, u32 low, u32 high)
{
 struct net *net = xs_net(x);
 unsigned int h;
 struct xfrm_state *x0;
 int err = -ENOENT;
 __be32 minspi = htonl(low);
 __be32 maxspi = htonl(high);
 u32 mark = x->mark.v & x->mark.m;

 spin_lock_bh(&x->lock);
 if (x->km.state == XFRM_STATE_DEAD)
  goto unlock;

 err = 0;
 if (x->id.spi)
  goto unlock;

 err = -ENOENT;

 if (minspi == maxspi) {
  x0 = xfrm_state_lookup(net, mark, &x->id.daddr, minspi, x->id.proto, x->props.family);
  if (x0) {
   xfrm_state_put(x0);
   goto unlock;
  }
  x->id.spi = minspi;
 } else {
  u32 spi = 0;
  for (h = 0; h < high-low+1; h++) {
   spi = low + prandom_u32()%(high-low+1);
   x0 = xfrm_state_lookup(net, mark, &x->id.daddr, htonl(spi), x->id.proto, x->props.family);
   if (x0 == ((void*)0)) {
    x->id.spi = htonl(spi);
    break;
   }
   xfrm_state_put(x0);
  }
 }
 if (x->id.spi) {
  spin_lock_bh(&net->xfrm.xfrm_state_lock);
  h = xfrm_spi_hash(net, &x->id.daddr, x->id.spi, x->id.proto, x->props.family);
  hlist_add_head_rcu(&x->byspi, net->xfrm.state_byspi + h);
  spin_unlock_bh(&net->xfrm.xfrm_state_lock);

  err = 0;
 }

unlock:
 spin_unlock_bh(&x->lock);

 return err;
}

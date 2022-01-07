
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef int u8 ;
typedef int u32 ;
struct xfrm_state {int dummy; } ;
struct TYPE_2__ {int xfrm_state_lock; } ;
struct net {TYPE_1__ xfrm; } ;


 struct xfrm_state* __xfrm_state_lookup_byaddr (struct net*,int ,int const*,int const*,int ,unsigned short) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct xfrm_state *
xfrm_state_lookup_byaddr(struct net *net, u32 mark,
    const xfrm_address_t *daddr, const xfrm_address_t *saddr,
    u8 proto, unsigned short family)
{
 struct xfrm_state *x;

 spin_lock_bh(&net->xfrm.xfrm_state_lock);
 x = __xfrm_state_lookup_byaddr(net, mark, daddr, saddr, proto, family);
 spin_unlock_bh(&net->xfrm.xfrm_state_lock);
 return x;
}

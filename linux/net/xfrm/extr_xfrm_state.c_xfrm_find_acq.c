
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef int u8 ;
typedef int u32 ;
struct xfrm_state {int dummy; } ;
struct xfrm_mark {int dummy; } ;
struct TYPE_2__ {int xfrm_state_lock; } ;
struct net {TYPE_1__ xfrm; } ;


 struct xfrm_state* __find_acq_core (struct net*,struct xfrm_mark const*,unsigned short,int ,int ,int ,int ,int const*,int const*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct xfrm_state *
xfrm_find_acq(struct net *net, const struct xfrm_mark *mark, u8 mode, u32 reqid,
       u32 if_id, u8 proto, const xfrm_address_t *daddr,
       const xfrm_address_t *saddr, int create, unsigned short family)
{
 struct xfrm_state *x;

 spin_lock_bh(&net->xfrm.xfrm_state_lock);
 x = __find_acq_core(net, mark, family, mode, reqid, if_id, proto, daddr, saddr, create);
 spin_unlock_bh(&net->xfrm.xfrm_state_lock);

 return x;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef int u32 ;
struct TYPE_5__ {int daddr; } ;
struct TYPE_4__ {int saddr; } ;
struct xfrm_state {int * coaddr; TYPE_3__* type; TYPE_2__ id; TYPE_1__ props; } ;
struct net {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_6__ {int flags; } ;


 int IS_ERR (struct dst_entry*) ;
 int XFRM_TYPE_LOCAL_COADDR ;
 int XFRM_TYPE_REMOTE_COADDR ;
 struct dst_entry* __xfrm_dst_lookup (struct net*,int,int,int *,int *,int,int ) ;
 int memcpy (int *,int *,int) ;
 struct net* xs_net (struct xfrm_state*) ;

__attribute__((used)) static inline struct dst_entry *xfrm_dst_lookup(struct xfrm_state *x,
      int tos, int oif,
      xfrm_address_t *prev_saddr,
      xfrm_address_t *prev_daddr,
      int family, u32 mark)
{
 struct net *net = xs_net(x);
 xfrm_address_t *saddr = &x->props.saddr;
 xfrm_address_t *daddr = &x->id.daddr;
 struct dst_entry *dst;

 if (x->type->flags & XFRM_TYPE_LOCAL_COADDR) {
  saddr = x->coaddr;
  daddr = prev_daddr;
 }
 if (x->type->flags & XFRM_TYPE_REMOTE_COADDR) {
  saddr = prev_saddr;
  daddr = x->coaddr;
 }

 dst = __xfrm_dst_lookup(net, tos, oif, saddr, daddr, family, mark);

 if (!IS_ERR(dst)) {
  if (prev_saddr != saddr)
   memcpy(prev_saddr, saddr, sizeof(*prev_saddr));
  if (prev_daddr != daddr)
   memcpy(prev_daddr, daddr, sizeof(*prev_daddr));
 }

 return dst;
}

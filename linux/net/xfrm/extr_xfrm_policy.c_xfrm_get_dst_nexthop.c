
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int daddr; } ;
struct TYPE_5__ {scalar_t__ mode; } ;
struct xfrm_state {void* coaddr; TYPE_1__ id; TYPE_3__* type; TYPE_2__ props; } ;
struct dst_entry {struct xfrm_state* xfrm; } ;
struct TYPE_6__ {int flags; } ;


 scalar_t__ XFRM_MODE_TRANSPORT ;
 int XFRM_TYPE_LOCAL_COADDR ;
 int XFRM_TYPE_REMOTE_COADDR ;
 struct dst_entry* xfrm_dst_child (struct dst_entry const*) ;

__attribute__((used)) static const void *xfrm_get_dst_nexthop(const struct dst_entry *dst,
     const void *daddr)
{
 while (dst->xfrm) {
  const struct xfrm_state *xfrm = dst->xfrm;

  dst = xfrm_dst_child(dst);

  if (xfrm->props.mode == XFRM_MODE_TRANSPORT)
   continue;
  if (xfrm->type->flags & XFRM_TYPE_REMOTE_COADDR)
   daddr = xfrm->coaddr;
  else if (!(xfrm->type->flags & XFRM_TYPE_LOCAL_COADDR))
   daddr = &xfrm->id.daddr;
 }
 return daddr;
}

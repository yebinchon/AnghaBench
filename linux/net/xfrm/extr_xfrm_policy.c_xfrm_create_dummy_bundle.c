
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct xfrm_flo {int flags; struct dst_entry* dst_orig; } ;
struct dst_entry {int flags; struct net_device* dev; int output; int input; int lastuse; int obsolete; } ;
struct TYPE_4__ {struct dst_entry dst; } ;
struct xfrm_dst {struct dst_entry* path; struct dst_entry* route; TYPE_2__ u; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ sysctl_larval_drop; } ;
struct net {TYPE_1__ xfrm; } ;
struct flowi {int dummy; } ;


 int DST_HOST ;
 int DST_OBSOLETE_FORCE_CHK ;
 int DST_XFRM_QUEUE ;
 int ENODEV ;
 struct xfrm_dst* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct xfrm_dst*) ;
 int XFRM_LOOKUP_QUEUE ;
 int dst_copy_metrics (struct dst_entry*,struct dst_entry*) ;
 int dst_discard ;
 int dst_hold (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 int jiffies ;
 int xdst_queue_output ;
 struct xfrm_dst* xfrm_alloc_dst (struct net*,int ) ;
 int xfrm_dst_set_child (struct xfrm_dst*,struct dst_entry*) ;
 int xfrm_fill_dst (struct xfrm_dst*,struct net_device*,struct flowi const*) ;
 int xfrm_init_path (struct xfrm_dst*,struct dst_entry*,int ) ;

__attribute__((used)) static struct xfrm_dst *xfrm_create_dummy_bundle(struct net *net,
       struct xfrm_flo *xflo,
       const struct flowi *fl,
       int num_xfrms,
       u16 family)
{
 int err;
 struct net_device *dev;
 struct dst_entry *dst;
 struct dst_entry *dst1;
 struct xfrm_dst *xdst;

 xdst = xfrm_alloc_dst(net, family);
 if (IS_ERR(xdst))
  return xdst;

 if (!(xflo->flags & XFRM_LOOKUP_QUEUE) ||
     net->xfrm.sysctl_larval_drop ||
     num_xfrms <= 0)
  return xdst;

 dst = xflo->dst_orig;
 dst1 = &xdst->u.dst;
 dst_hold(dst);
 xdst->route = dst;

 dst_copy_metrics(dst1, dst);

 dst1->obsolete = DST_OBSOLETE_FORCE_CHK;
 dst1->flags |= DST_HOST | DST_XFRM_QUEUE;
 dst1->lastuse = jiffies;

 dst1->input = dst_discard;
 dst1->output = xdst_queue_output;

 dst_hold(dst);
 xfrm_dst_set_child(xdst, dst);
 xdst->path = dst;

 xfrm_init_path((struct xfrm_dst *)dst1, dst, 0);

 err = -ENODEV;
 dev = dst->dev;
 if (!dev)
  goto free_dst;

 err = xfrm_fill_dst(xdst, dev, fl);
 if (err)
  goto free_dst;

out:
 return xdst;

free_dst:
 dst_release(dst1);
 xdst = ERR_PTR(err);
 goto out;
}

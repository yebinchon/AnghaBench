
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct dst_ops {int dummy; } ;
struct dst_entry {unsigned long expires; int obsolete; unsigned short flags; int lastuse; scalar_t__ __use; int __refcnt; int * lwtstate; scalar_t__ tclassid; scalar_t__ trailer_len; scalar_t__ header_len; scalar_t__ error; int output; int input; int * xfrm; struct dst_ops* ops; struct net_device* dev; } ;
struct TYPE_2__ {int metrics; } ;


 unsigned short DST_NOCOUNT ;
 int atomic_set (int *,int) ;
 int dev_hold (struct net_device*) ;
 TYPE_1__ dst_default_metrics ;
 int dst_discard ;
 int dst_discard_out ;
 int dst_entries_add (struct dst_ops*,int) ;
 int dst_init_metrics (struct dst_entry*,int ,int) ;
 int jiffies ;

void dst_init(struct dst_entry *dst, struct dst_ops *ops,
       struct net_device *dev, int initial_ref, int initial_obsolete,
       unsigned short flags)
{
 dst->dev = dev;
 if (dev)
  dev_hold(dev);
 dst->ops = ops;
 dst_init_metrics(dst, dst_default_metrics.metrics, 1);
 dst->expires = 0UL;



 dst->input = dst_discard;
 dst->output = dst_discard_out;
 dst->error = 0;
 dst->obsolete = initial_obsolete;
 dst->header_len = 0;
 dst->trailer_len = 0;



 dst->lwtstate = ((void*)0);
 atomic_set(&dst->__refcnt, initial_ref);
 dst->__use = 0;
 dst->lastuse = jiffies;
 dst->flags = flags;
 if (!(flags & DST_NOCOUNT))
  dst_entries_add(ops, 1);
}

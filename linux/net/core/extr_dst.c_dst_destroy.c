
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_dst {struct dst_entry* child; } ;
struct metadata_dst {int dummy; } ;
struct dst_entry {int flags; TYPE_1__* ops; int lwtstate; scalar_t__ dev; scalar_t__ xfrm; } ;
struct TYPE_2__ {int kmem_cachep; int (* destroy ) (struct dst_entry*) ;} ;


 int DST_METADATA ;
 int DST_NOCOUNT ;
 int dev_put (scalar_t__) ;
 int dst_entries_add (TYPE_1__*,int) ;
 int dst_release_immediate (struct dst_entry*) ;
 int kmem_cache_free (int ,struct dst_entry*) ;
 int lwtstate_put (int ) ;
 int metadata_dst_free (struct metadata_dst*) ;
 int smp_rmb () ;
 int stub1 (struct dst_entry*) ;

struct dst_entry *dst_destroy(struct dst_entry * dst)
{
 struct dst_entry *child = ((void*)0);

 smp_rmb();
 if (!(dst->flags & DST_NOCOUNT))
  dst_entries_add(dst->ops, -1);

 if (dst->ops->destroy)
  dst->ops->destroy(dst);
 if (dst->dev)
  dev_put(dst->dev);

 lwtstate_put(dst->lwtstate);

 if (dst->flags & DST_METADATA)
  metadata_dst_free((struct metadata_dst *)dst);
 else
  kmem_cache_free(dst->ops->kmem_cachep, dst);

 dst = child;
 if (dst)
  dst_release_immediate(dst);
 return ((void*)0);
}

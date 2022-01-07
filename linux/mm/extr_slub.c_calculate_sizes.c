
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct track {int dummy; } ;
struct kmem_cache {int flags; unsigned int object_size; unsigned int inuse; unsigned int offset; int red_left_pad; int align; unsigned int size; void* oo; void* max; void* min; int allocflags; scalar_t__ ctor; } ;
typedef int slab_flags_t ;


 unsigned int ALIGN (unsigned int,int) ;
 int GFP_DMA ;
 int GFP_DMA32 ;
 int SLAB_CACHE_DMA ;
 int SLAB_CACHE_DMA32 ;
 int SLAB_POISON ;
 int SLAB_RECLAIM_ACCOUNT ;
 int SLAB_RED_ZONE ;
 int SLAB_STORE_USER ;
 int SLAB_TYPESAFE_BY_RCU ;
 int __GFP_COMP ;
 int __GFP_RECLAIMABLE ;
 int __OBJECT_POISON ;
 unsigned int calculate_order (unsigned int) ;
 unsigned int get_order (unsigned int) ;
 int kasan_cache_create (struct kmem_cache*,unsigned int*,int*) ;
 void* oo_make (unsigned int,unsigned int) ;
 scalar_t__ oo_objects (void*) ;

__attribute__((used)) static int calculate_sizes(struct kmem_cache *s, int forced_order)
{
 slab_flags_t flags = s->flags;
 unsigned int size = s->object_size;
 unsigned int order;






 size = ALIGN(size, sizeof(void *));
 s->inuse = size;

 if (((flags & (SLAB_TYPESAFE_BY_RCU | SLAB_POISON)) ||
  s->ctor)) {
  s->offset = size;
  size += sizeof(void *);
 }
 kasan_cache_create(s, &size, &s->flags);
 size = ALIGN(size, s->align);
 s->size = size;
 if (forced_order >= 0)
  order = forced_order;
 else
  order = calculate_order(size);

 if ((int)order < 0)
  return 0;

 s->allocflags = 0;
 if (order)
  s->allocflags |= __GFP_COMP;

 if (s->flags & SLAB_CACHE_DMA)
  s->allocflags |= GFP_DMA;

 if (s->flags & SLAB_CACHE_DMA32)
  s->allocflags |= GFP_DMA32;

 if (s->flags & SLAB_RECLAIM_ACCOUNT)
  s->allocflags |= __GFP_RECLAIMABLE;




 s->oo = oo_make(order, size);
 s->min = oo_make(get_order(size), size);
 if (oo_objects(s->oo) > oo_objects(s->max))
  s->max = s->oo;

 return !!oo_objects(s->oo);
}

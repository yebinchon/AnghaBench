
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int flags; int red_left_pad; } ;


 int SLAB_RED_ZONE ;
 scalar_t__ kmem_cache_debug (struct kmem_cache*) ;

void *fixup_red_left(struct kmem_cache *s, void *p)
{
 if (kmem_cache_debug(s) && s->flags & SLAB_RED_ZONE)
  p += s->red_left_pad;

 return p;
}

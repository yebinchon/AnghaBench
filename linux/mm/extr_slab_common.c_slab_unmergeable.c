
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int flags; scalar_t__ refcount; scalar_t__ usersize; scalar_t__ ctor; } ;


 int SLAB_NEVER_MERGE ;
 int is_root_cache (struct kmem_cache*) ;
 scalar_t__ slab_nomerge ;

int slab_unmergeable(struct kmem_cache *s)
{
 if (slab_nomerge || (s->flags & SLAB_NEVER_MERGE))
  return 1;

 if (!is_root_cache(s))
  return 1;

 if (s->ctor)
  return 1;

 if (s->usersize)
  return 1;




 if (s->refcount < 0)
  return 1;

 return 0;
}

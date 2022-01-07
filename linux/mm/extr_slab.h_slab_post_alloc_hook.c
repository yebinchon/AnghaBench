
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int flags; int object_size; } ;
typedef int gfp_t ;


 int gfp_allowed_mask ;
 void* kasan_slab_alloc (struct kmem_cache*,void*,int ) ;
 int kmemleak_alloc_recursive (void*,int ,int,int ,int ) ;
 scalar_t__ memcg_kmem_enabled () ;
 int memcg_kmem_put_cache (struct kmem_cache*) ;

__attribute__((used)) static inline void slab_post_alloc_hook(struct kmem_cache *s, gfp_t flags,
     size_t size, void **p)
{
 size_t i;

 flags &= gfp_allowed_mask;
 for (i = 0; i < size; i++) {
  p[i] = kasan_slab_alloc(s, p[i], flags);

  kmemleak_alloc_recursive(p[i], s->object_size, 1,
      s->flags, flags);
 }

 if (memcg_kmem_enabled())
  memcg_kmem_put_cache(s);
}

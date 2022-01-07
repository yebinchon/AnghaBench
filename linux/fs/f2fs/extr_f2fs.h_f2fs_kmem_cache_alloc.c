
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
typedef int gfp_t ;


 int __GFP_NOFAIL ;
 void* kmem_cache_alloc (struct kmem_cache*,int) ;

__attribute__((used)) static inline void *f2fs_kmem_cache_alloc(struct kmem_cache *cachep,
      gfp_t flags)
{
 void *entry;

 entry = kmem_cache_alloc(cachep, flags);
 if (!entry)
  entry = kmem_cache_alloc(cachep, flags | __GFP_NOFAIL);
 return entry;
}

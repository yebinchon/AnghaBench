
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;



__attribute__((used)) static inline int cache_free_alien(struct kmem_cache *cachep, void *objp)
{
 return 0;
}

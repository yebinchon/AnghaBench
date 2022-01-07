
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
typedef int gfp_t ;



__attribute__((used)) static inline int cache_random_seq_create(struct kmem_cache *cachep,
     unsigned int count, gfp_t gfp)
{
 return 0;
}

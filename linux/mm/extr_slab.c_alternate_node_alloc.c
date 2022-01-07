
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
typedef int gfp_t ;



__attribute__((used)) static inline void *alternate_node_alloc(struct kmem_cache *cachep,
  gfp_t flags)
{
 return ((void*)0);
}

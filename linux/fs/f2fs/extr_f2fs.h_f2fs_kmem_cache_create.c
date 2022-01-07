
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 int SLAB_RECLAIM_ACCOUNT ;
 struct kmem_cache* kmem_cache_create (char const*,size_t,int ,int ,int *) ;

__attribute__((used)) static inline struct kmem_cache *f2fs_kmem_cache_create(const char *name,
     size_t size)
{
 return kmem_cache_create(name, size, 0, SLAB_RECLAIM_ACCOUNT, ((void*)0));
}

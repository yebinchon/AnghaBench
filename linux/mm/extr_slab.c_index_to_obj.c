
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {void* s_mem; } ;
struct kmem_cache {unsigned int size; } ;



__attribute__((used)) static inline void *index_to_obj(struct kmem_cache *cache, struct page *page,
     unsigned int idx)
{
 return page->s_mem + cache->size * idx;
}

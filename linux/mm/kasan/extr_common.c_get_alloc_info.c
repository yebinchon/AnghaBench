
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alloc_meta_offset; } ;
struct kmem_cache {TYPE_1__ kasan_info; } ;
typedef void kasan_alloc_meta ;



struct kasan_alloc_meta *get_alloc_info(struct kmem_cache *cache,
     const void *object)
{
 return (void *)object + cache->kasan_info.alloc_meta_offset;
}

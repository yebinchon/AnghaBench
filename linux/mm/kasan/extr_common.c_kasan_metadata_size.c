
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ free_meta_offset; scalar_t__ alloc_meta_offset; } ;
struct kmem_cache {TYPE_1__ kasan_info; } ;
struct kasan_free_meta {int dummy; } ;
struct kasan_alloc_meta {int dummy; } ;



size_t kasan_metadata_size(struct kmem_cache *cache)
{
 return (cache->kasan_info.alloc_meta_offset ?
  sizeof(struct kasan_alloc_meta) : 0) +
  (cache->kasan_info.free_meta_offset ?
  sizeof(struct kasan_free_meta) : 0);
}

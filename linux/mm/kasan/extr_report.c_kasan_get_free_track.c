
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct kmem_cache {int dummy; } ;
struct kasan_track {int dummy; } ;
struct kasan_alloc_meta {scalar_t__* free_pointer_tag; int free_track_idx; struct kasan_track* free_track; } ;


 int KASAN_NR_FREE_STACKS ;
 struct kasan_alloc_meta* get_alloc_info (struct kmem_cache*,void*) ;

__attribute__((used)) static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
  void *object, u8 tag)
{
 struct kasan_alloc_meta *alloc_meta;
 int i = 0;

 alloc_meta = get_alloc_info(cache, object);
 return &alloc_meta->free_track[i];
}

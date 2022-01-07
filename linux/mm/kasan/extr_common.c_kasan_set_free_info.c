
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct kmem_cache {int dummy; } ;
struct kasan_alloc_meta {size_t free_track_idx; size_t* free_pointer_tag; int * free_track; } ;


 int GFP_NOWAIT ;
 size_t KASAN_NR_FREE_STACKS ;
 struct kasan_alloc_meta* get_alloc_info (struct kmem_cache*,void*) ;
 int set_track (int *,int ) ;

__attribute__((used)) static void kasan_set_free_info(struct kmem_cache *cache,
  void *object, u8 tag)
{
 struct kasan_alloc_meta *alloc_meta;
 u8 idx = 0;

 alloc_meta = get_alloc_info(cache, object);







 set_track(&alloc_meta->free_track[idx], GFP_NOWAIT);
}

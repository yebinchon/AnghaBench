
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kmem_cache {int flags; } ;
struct kasan_track {int dummy; } ;
struct kasan_alloc_meta {struct kasan_track alloc_track; } ;


 int SLAB_KASAN ;
 int describe_object_addr (struct kmem_cache*,void*,void const*) ;
 struct kasan_alloc_meta* get_alloc_info (struct kmem_cache*,void*) ;
 struct kasan_track* kasan_get_free_track (struct kmem_cache*,void*,int ) ;
 int pr_err (char*) ;
 int print_track (struct kasan_track*,char*) ;

__attribute__((used)) static void describe_object(struct kmem_cache *cache, void *object,
    const void *addr, u8 tag)
{
 struct kasan_alloc_meta *alloc_info = get_alloc_info(cache, object);

 if (cache->flags & SLAB_KASAN) {
  struct kasan_track *free_track;

  print_track(&alloc_info->alloc_track, "Allocated");
  pr_err("\n");
  free_track = kasan_get_free_track(cache, object, tag);
  print_track(free_track, "Freed");
  pr_err("\n");
 }

 describe_object_addr(cache, object, addr);
}

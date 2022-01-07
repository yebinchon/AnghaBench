
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int object_size; } ;


 int KASAN_KMALLOC_REDZONE ;
 int KASAN_SHADOW_SCALE_SIZE ;
 int kasan_poison_shadow (void*,int ,int ) ;
 int round_up (int ,int ) ;

void kasan_poison_object_data(struct kmem_cache *cache, void *object)
{
 kasan_poison_shadow(object,
   round_up(cache->object_size, KASAN_SHADOW_SCALE_SIZE),
   KASAN_KMALLOC_REDZONE);
}

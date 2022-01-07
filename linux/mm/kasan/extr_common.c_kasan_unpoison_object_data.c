
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int object_size; } ;


 int kasan_unpoison_shadow (void*,int ) ;

void kasan_unpoison_object_data(struct kmem_cache *cache, void *object)
{
 kasan_unpoison_shadow(object, cache->object_size);
}

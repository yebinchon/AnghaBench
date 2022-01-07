
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kmem_cache {int flags; int ctor; } ;


 int KASAN_TAG_KERNEL ;
 int SLAB_TYPESAFE_BY_RCU ;
 int get_tag (void const*) ;
 int obj_to_index (struct kmem_cache*,int ,void*) ;
 int random_tag () ;
 int virt_to_page (void const*) ;

__attribute__((used)) static u8 assign_tag(struct kmem_cache *cache, const void *object,
   bool init, bool keep_tag)
{






 if (keep_tag)
  return get_tag(object);





 if (!cache->ctor && !(cache->flags & SLAB_TYPESAFE_BY_RCU))
  return init ? KASAN_TAG_KERNEL : random_tag();
 return init ? random_tag() : get_tag(object);

}

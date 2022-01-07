
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int flags; int object_size; } ;


 int SLAB_DEBUG_OBJECTS ;
 int _RET_IP_ ;
 int __cache_free (struct kmem_cache*,void*,int ) ;
 struct kmem_cache* cache_from_obj (struct kmem_cache*,void*) ;
 int debug_check_no_locks_freed (void*,int ) ;
 int debug_check_no_obj_freed (void*,int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 struct kmem_cache* virt_to_cache (void*) ;

void kmem_cache_free_bulk(struct kmem_cache *orig_s, size_t size, void **p)
{
 struct kmem_cache *s;
 size_t i;

 local_irq_disable();
 for (i = 0; i < size; i++) {
  void *objp = p[i];

  if (!orig_s)
   s = virt_to_cache(objp);
  else
   s = cache_from_obj(orig_s, objp);
  if (!s)
   continue;

  debug_check_no_locks_freed(objp, s->object_size);
  if (!(s->flags & SLAB_DEBUG_OBJECTS))
   debug_check_no_obj_freed(objp, s->object_size);

  __cache_free(s, objp, _RET_IP_);
 }
 local_irq_enable();


}

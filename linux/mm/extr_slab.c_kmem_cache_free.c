
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
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int trace_kmem_cache_free (int ,void*) ;

void kmem_cache_free(struct kmem_cache *cachep, void *objp)
{
 unsigned long flags;
 cachep = cache_from_obj(cachep, objp);
 if (!cachep)
  return;

 local_irq_save(flags);
 debug_check_no_locks_freed(objp, cachep->object_size);
 if (!(cachep->flags & SLAB_DEBUG_OBJECTS))
  debug_check_no_obj_freed(objp, cachep->object_size);
 __cache_free(cachep, objp, _RET_IP_);
 local_irq_restore(flags);

 trace_kmem_cache_free(_RET_IP_, objp);
}

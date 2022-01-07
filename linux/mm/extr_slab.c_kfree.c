
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int object_size; } ;


 int ZERO_OR_NULL_PTR (void const*) ;
 int _RET_IP_ ;
 int __cache_free (struct kmem_cache*,void*,int ) ;
 int debug_check_no_locks_freed (void const*,int ) ;
 int debug_check_no_obj_freed (void const*,int ) ;
 int kfree_debugcheck (void const*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int trace_kfree (int ,void const*) ;
 scalar_t__ unlikely (int ) ;
 struct kmem_cache* virt_to_cache (void const*) ;

void kfree(const void *objp)
{
 struct kmem_cache *c;
 unsigned long flags;

 trace_kfree(_RET_IP_, objp);

 if (unlikely(ZERO_OR_NULL_PTR(objp)))
  return;
 local_irq_save(flags);
 kfree_debugcheck(objp);
 c = virt_to_cache(objp);
 if (!c) {
  local_irq_restore(flags);
  return;
 }
 debug_check_no_locks_freed(objp, c->object_size);

 debug_check_no_obj_freed(objp, c->object_size);
 __cache_free(c, (void *)objp, _RET_IP_);
 local_irq_restore(flags);
}

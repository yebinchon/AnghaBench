
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_percpu_free {scalar_t__ obj_free; int free_objs; } ;
struct debug_obj {int node; } ;


 int ODEBUG_BATCH_SIZE ;
 scalar_t__ ODEBUG_FREE_WORK_MAX ;
 scalar_t__ ODEBUG_POOL_PERCPU_SIZE ;
 struct debug_obj* __alloc_object (int *) ;
 scalar_t__ debug_objects_pool_size ;
 int hlist_add_head (int *,int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ obj_cache ;
 scalar_t__ obj_nr_tofree ;
 int obj_pool ;
 scalar_t__ obj_pool_free ;
 scalar_t__ obj_pool_used ;
 int obj_to_free ;
 int percpu_obj_pool ;
 int pool_lock ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 struct debug_percpu_free* this_cpu_ptr (int *) ;

__attribute__((used)) static void __free_object(struct debug_obj *obj)
{
 struct debug_obj *objs[ODEBUG_BATCH_SIZE];
 struct debug_percpu_free *percpu_pool;
 int lookahead_count = 0;
 unsigned long flags;
 bool work;

 local_irq_save(flags);
 if (!obj_cache)
  goto free_to_obj_pool;




 percpu_pool = this_cpu_ptr(&percpu_obj_pool);
 if (percpu_pool->obj_free < ODEBUG_POOL_PERCPU_SIZE) {
  hlist_add_head(&obj->node, &percpu_pool->free_objs);
  percpu_pool->obj_free++;
  local_irq_restore(flags);
  return;
 }





 for (; lookahead_count < ODEBUG_BATCH_SIZE; lookahead_count++) {
  objs[lookahead_count] = __alloc_object(&percpu_pool->free_objs);
  if (!objs[lookahead_count])
   break;
  percpu_pool->obj_free--;
 }

free_to_obj_pool:
 raw_spin_lock(&pool_lock);
 work = (obj_pool_free > debug_objects_pool_size) && obj_cache &&
        (obj_nr_tofree < ODEBUG_FREE_WORK_MAX);
 obj_pool_used--;

 if (work) {
  obj_nr_tofree++;
  hlist_add_head(&obj->node, &obj_to_free);
  if (lookahead_count) {
   obj_nr_tofree += lookahead_count;
   obj_pool_used -= lookahead_count;
   while (lookahead_count) {
    hlist_add_head(&objs[--lookahead_count]->node,
            &obj_to_free);
   }
  }

  if ((obj_pool_free > debug_objects_pool_size) &&
      (obj_nr_tofree < ODEBUG_FREE_WORK_MAX)) {
   int i;




   for (i = 0; i < ODEBUG_BATCH_SIZE; i++) {
    obj = __alloc_object(&obj_pool);
    hlist_add_head(&obj->node, &obj_to_free);
    obj_pool_free--;
    obj_nr_tofree++;
   }
  }
 } else {
  obj_pool_free++;
  hlist_add_head(&obj->node, &obj_pool);
  if (lookahead_count) {
   obj_pool_free += lookahead_count;
   obj_pool_used -= lookahead_count;
   while (lookahead_count) {
    hlist_add_head(&objs[--lookahead_count]->node,
            &obj_pool);
   }
  }
 }
 raw_spin_unlock(&pool_lock);
 local_irq_restore(flags);
}

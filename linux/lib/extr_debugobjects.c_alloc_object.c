
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_percpu_free {int obj_free; int free_objs; } ;
struct debug_obj_descr {int dummy; } ;
struct debug_obj {int node; scalar_t__ astate; int state; struct debug_obj_descr* descr; void* object; } ;
struct debug_bucket {int list; } ;


 int ODEBUG_BATCH_SIZE ;
 int ODEBUG_STATE_NONE ;
 struct debug_obj* __alloc_object (int *) ;
 int hlist_add_head (int *,int *) ;
 scalar_t__ likely (int ) ;
 int obj_cache ;
 int obj_pool ;
 scalar_t__ obj_pool_free ;
 scalar_t__ obj_pool_max_used ;
 scalar_t__ obj_pool_min_free ;
 scalar_t__ obj_pool_used ;
 int percpu_obj_pool ;
 int pool_lock ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 struct debug_percpu_free* this_cpu_ptr (int *) ;

__attribute__((used)) static struct debug_obj *
alloc_object(void *addr, struct debug_bucket *b, struct debug_obj_descr *descr)
{
 struct debug_percpu_free *percpu_pool = this_cpu_ptr(&percpu_obj_pool);
 struct debug_obj *obj;

 if (likely(obj_cache)) {
  obj = __alloc_object(&percpu_pool->free_objs);
  if (obj) {
   percpu_pool->obj_free--;
   goto init_obj;
  }
 }

 raw_spin_lock(&pool_lock);
 obj = __alloc_object(&obj_pool);
 if (obj) {
  obj_pool_used++;
  obj_pool_free--;





  if (likely(obj_cache)) {
   int i;

   for (i = 0; i < ODEBUG_BATCH_SIZE; i++) {
    struct debug_obj *obj2;

    obj2 = __alloc_object(&obj_pool);
    if (!obj2)
     break;
    hlist_add_head(&obj2->node,
            &percpu_pool->free_objs);
    percpu_pool->obj_free++;
    obj_pool_used++;
    obj_pool_free--;
   }
  }

  if (obj_pool_used > obj_pool_max_used)
   obj_pool_max_used = obj_pool_used;

  if (obj_pool_free < obj_pool_min_free)
   obj_pool_min_free = obj_pool_free;
 }
 raw_spin_unlock(&pool_lock);

init_obj:
 if (obj) {
  obj->object = addr;
  obj->descr = descr;
  obj->state = ODEBUG_STATE_NONE;
  obj->astate = 0;
  hlist_add_head(&obj->node, &b->list);
 }
 return obj;
}

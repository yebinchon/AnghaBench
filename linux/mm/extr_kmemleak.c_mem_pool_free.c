
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {int object_list; } ;


 int ARRAY_SIZE (struct kmemleak_object*) ;
 int kmem_cache_free (int ,struct kmemleak_object*) ;
 int kmemleak_lock ;
 int list_add (int *,int *) ;
 struct kmemleak_object* mem_pool ;
 int mem_pool_free_list ;
 int object_cache ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mem_pool_free(struct kmemleak_object *object)
{
 unsigned long flags;

 if (object < mem_pool || object >= mem_pool + ARRAY_SIZE(mem_pool)) {
  kmem_cache_free(object_cache, object);
  return;
 }


 write_lock_irqsave(&kmemleak_lock, flags);
 list_add(&object->object_list, &mem_pool_free_list);
 write_unlock_irqrestore(&kmemleak_lock, flags);
}

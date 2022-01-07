
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {unsigned long excess_ref; int lock; } ;


 struct kmemleak_object* find_and_get_object (unsigned long,int ) ;
 int kmemleak_warn (char*,unsigned long) ;
 int put_object (struct kmemleak_object*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void object_set_excess_ref(unsigned long ptr, unsigned long excess_ref)
{
 unsigned long flags;
 struct kmemleak_object *object;

 object = find_and_get_object(ptr, 0);
 if (!object) {
  kmemleak_warn("Setting excess_ref on unknown object at 0x%08lx\n",
         ptr);
  return;
 }

 spin_lock_irqsave(&object->lock, flags);
 object->excess_ref = excess_ref;
 spin_unlock_irqrestore(&object->lock, flags);
 put_object(object);
}

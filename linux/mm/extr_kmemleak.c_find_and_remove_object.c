
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {int dummy; } ;


 int __remove_object (struct kmemleak_object*) ;
 int kmemleak_lock ;
 struct kmemleak_object* lookup_object (unsigned long,int) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct kmemleak_object *find_and_remove_object(unsigned long ptr, int alias)
{
 unsigned long flags;
 struct kmemleak_object *object;

 write_lock_irqsave(&kmemleak_lock, flags);
 object = lookup_object(ptr, alias);
 if (object)
  __remove_object(object);
 write_unlock_irqrestore(&kmemleak_lock, flags);

 return object;
}

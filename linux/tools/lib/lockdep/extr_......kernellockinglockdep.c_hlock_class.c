
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_class {int dummy; } ;
struct held_lock {unsigned int class_idx; } ;


 int DEBUG_LOCKS_WARN_ON (int) ;
 int barrier () ;
 struct lock_class* lock_classes ;
 int lock_classes_in_use ;
 int test_bit (unsigned int,int ) ;

__attribute__((used)) static inline struct lock_class *hlock_class(struct held_lock *hlock)
{
 unsigned int class_idx = hlock->class_idx;


 barrier();

 if (!test_bit(class_idx, lock_classes_in_use)) {



  DEBUG_LOCKS_WARN_ON(1);
  return ((void*)0);
 }





 return lock_classes + class_idx;
}

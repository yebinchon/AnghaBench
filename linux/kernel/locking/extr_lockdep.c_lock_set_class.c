
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lockdep_map {int dummy; } ;
struct lock_class_key {int dummy; } ;
struct TYPE_3__ {int lockdep_recursion; } ;


 scalar_t__ __lock_set_class (struct lockdep_map*,char const*,struct lock_class_key*,unsigned int,unsigned long) ;
 int check_chain_key (TYPE_1__*) ;
 int check_flags (unsigned long) ;
 TYPE_1__* current ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;
 scalar_t__ unlikely (int) ;

void lock_set_class(struct lockdep_map *lock, const char *name,
      struct lock_class_key *key, unsigned int subclass,
      unsigned long ip)
{
 unsigned long flags;

 if (unlikely(current->lockdep_recursion))
  return;

 raw_local_irq_save(flags);
 current->lockdep_recursion = 1;
 check_flags(flags);
 if (__lock_set_class(lock, name, key, subclass, ip))
  check_chain_key(current);
 current->lockdep_recursion = 0;
 raw_local_irq_restore(flags);
}

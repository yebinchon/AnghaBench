
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_free {int dummy; } ;
struct lockdep_map {int dummy; } ;
struct lock_class {int dummy; } ;


 int MAX_LOCKDEP_SUBCLASSES ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int debug_locks_off () ;
 int lock_class_cache_is_registered (struct lockdep_map*) ;
 struct lock_class* look_up_lock_class (struct lockdep_map*,int) ;
 int zap_class (struct pending_free*,struct lock_class*) ;

__attribute__((used)) static void __lockdep_reset_lock(struct pending_free *pf,
     struct lockdep_map *lock)
{
 struct lock_class *class;
 int j;




 for (j = 0; j < MAX_LOCKDEP_SUBCLASSES; j++) {



  class = look_up_lock_class(lock, j);
  if (class)
   zap_class(pf, class);
 }




 if (WARN_ON_ONCE(lock_class_cache_is_registered(lock)))
  debug_locks_off();
}

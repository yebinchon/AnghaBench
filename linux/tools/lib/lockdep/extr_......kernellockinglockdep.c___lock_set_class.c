
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {unsigned int lockdep_depth; int curr_chain_key; } ;
struct lockdep_map {int dummy; } ;
struct lock_class_key {int dummy; } ;
struct lock_class {int dummy; } ;
struct held_lock {int prev_chain_key; struct lock_class* class_idx; } ;


 scalar_t__ DEBUG_LOCKS_WARN_ON (int) ;
 struct task_struct* current ;
 int debug_locks ;
 struct held_lock* find_held_lock (struct task_struct*,struct lockdep_map*,unsigned int,int*) ;
 int lock_classes ;
 int lockdep_init_map (struct lockdep_map*,char const*,struct lock_class_key*,int ) ;
 int print_unlock_imbalance_bug (struct task_struct*,struct lockdep_map*,unsigned long) ;
 scalar_t__ reacquire_held_locks (struct task_struct*,unsigned int,int,unsigned int*) ;
 struct lock_class* register_lock_class (struct lockdep_map*,unsigned int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
__lock_set_class(struct lockdep_map *lock, const char *name,
   struct lock_class_key *key, unsigned int subclass,
   unsigned long ip)
{
 struct task_struct *curr = current;
 unsigned int depth, merged = 0;
 struct held_lock *hlock;
 struct lock_class *class;
 int i;

 if (unlikely(!debug_locks))
  return 0;

 depth = curr->lockdep_depth;




 if (DEBUG_LOCKS_WARN_ON(!depth))
  return 0;

 hlock = find_held_lock(curr, lock, depth, &i);
 if (!hlock) {
  print_unlock_imbalance_bug(curr, lock, ip);
  return 0;
 }

 lockdep_init_map(lock, name, key, 0);
 class = register_lock_class(lock, subclass, 0);
 hlock->class_idx = class - lock_classes;

 curr->lockdep_depth = i;
 curr->curr_chain_key = hlock->prev_chain_key;

 if (reacquire_held_locks(curr, depth, i, &merged))
  return 0;





 if (DEBUG_LOCKS_WARN_ON(curr->lockdep_depth != depth - merged))
  return 0;
 return 1;
}

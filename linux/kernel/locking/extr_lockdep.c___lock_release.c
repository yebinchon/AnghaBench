
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {unsigned int lockdep_depth; int curr_chain_key; } ;
struct lockdep_map {int dummy; } ;
struct held_lock {int prev_chain_key; scalar_t__ references; int pin_count; struct lockdep_map* instance; } ;


 int DEBUG_LOCKS_WARN_ON (int) ;
 int WARN (int ,char*) ;
 struct task_struct* current ;
 int debug_locks ;
 struct held_lock* find_held_lock (struct task_struct*,struct lockdep_map*,unsigned int,int*) ;
 int lock_release_holdtime (struct held_lock*) ;
 int print_unlock_imbalance_bug (struct task_struct*,struct lockdep_map*,unsigned long) ;
 scalar_t__ reacquire_held_locks (struct task_struct*,unsigned int,int,unsigned int*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
__lock_release(struct lockdep_map *lock, unsigned long ip)
{
 struct task_struct *curr = current;
 unsigned int depth, merged = 1;
 struct held_lock *hlock;
 int i;

 if (unlikely(!debug_locks))
  return 0;

 depth = curr->lockdep_depth;




 if (depth <= 0) {
  print_unlock_imbalance_bug(curr, lock, ip);
  return 0;
 }





 hlock = find_held_lock(curr, lock, depth, &i);
 if (!hlock) {
  print_unlock_imbalance_bug(curr, lock, ip);
  return 0;
 }

 if (hlock->instance == lock)
  lock_release_holdtime(hlock);

 WARN(hlock->pin_count, "releasing a pinned lock\n");

 if (hlock->references) {
  hlock->references--;
  if (hlock->references) {





   return 1;
  }
 }







 curr->lockdep_depth = i;
 curr->curr_chain_key = hlock->prev_chain_key;





 if (i == depth-1)
  return 1;

 if (reacquire_held_locks(curr, depth, i + 1, &merged))
  return 0;






 DEBUG_LOCKS_WARN_ON(curr->lockdep_depth != depth - merged);






 return 0;
}

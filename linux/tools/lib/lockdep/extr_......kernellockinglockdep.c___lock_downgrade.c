
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {unsigned int lockdep_depth; int curr_chain_key; } ;
struct lockdep_map {int dummy; } ;
struct held_lock {int read; unsigned long acquire_ip; int prev_chain_key; } ;


 scalar_t__ DEBUG_LOCKS_WARN_ON (int) ;
 int WARN (int,char*) ;
 struct task_struct* current ;
 int debug_locks ;
 struct held_lock* find_held_lock (struct task_struct*,struct lockdep_map*,unsigned int,int*) ;
 int print_unlock_imbalance_bug (struct task_struct*,struct lockdep_map*,unsigned long) ;
 scalar_t__ reacquire_held_locks (struct task_struct*,unsigned int,int,unsigned int*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __lock_downgrade(struct lockdep_map *lock, unsigned long ip)
{
 struct task_struct *curr = current;
 unsigned int depth, merged = 0;
 struct held_lock *hlock;
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

 curr->lockdep_depth = i;
 curr->curr_chain_key = hlock->prev_chain_key;

 WARN(hlock->read, "downgrading a read lock");
 hlock->read = 1;
 hlock->acquire_ip = ip;

 if (reacquire_held_locks(curr, depth, i, &merged))
  return 0;


 if (DEBUG_LOCKS_WARN_ON(merged))
  return 0;





 if (DEBUG_LOCKS_WARN_ON(curr->lockdep_depth != depth))
  return 0;

 return 1;
}

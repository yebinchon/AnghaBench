
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int lockdep_depth; struct held_lock* held_locks; } ;
struct pin_cookie {scalar_t__ val; } ;
struct lockdep_map {int dummy; } ;
struct held_lock {scalar_t__ pin_count; } ;


 scalar_t__ WARN (int,char*) ;
 struct task_struct* current ;
 int debug_locks ;
 scalar_t__ match_held_lock (struct held_lock*,struct lockdep_map*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __lock_unpin_lock(struct lockdep_map *lock, struct pin_cookie cookie)
{
 struct task_struct *curr = current;
 int i;

 if (unlikely(!debug_locks))
  return;

 for (i = 0; i < curr->lockdep_depth; i++) {
  struct held_lock *hlock = curr->held_locks + i;

  if (match_held_lock(hlock, lock)) {
   if (WARN(!hlock->pin_count, "unpinning an unpinned lock\n"))
    return;

   hlock->pin_count -= cookie.val;

   if (WARN((int)hlock->pin_count < 0, "pin count corrupted\n"))
    hlock->pin_count = 0;

   return;
  }
 }

 WARN(1, "unpinning an unheld lock\n");
}

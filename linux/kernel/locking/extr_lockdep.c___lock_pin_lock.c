
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int lockdep_depth; struct held_lock* held_locks; } ;
struct pin_cookie {int val; } ;
struct lockdep_map {int dummy; } ;
struct held_lock {int pin_count; } ;


 struct pin_cookie NIL_COOKIE ;
 int WARN (int,char*) ;
 struct task_struct* current ;
 int debug_locks ;
 scalar_t__ match_held_lock (struct held_lock*,struct lockdep_map*) ;
 int prandom_u32 () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct pin_cookie __lock_pin_lock(struct lockdep_map *lock)
{
 struct pin_cookie cookie = NIL_COOKIE;
 struct task_struct *curr = current;
 int i;

 if (unlikely(!debug_locks))
  return cookie;

 for (i = 0; i < curr->lockdep_depth; i++) {
  struct held_lock *hlock = curr->held_locks + i;

  if (match_held_lock(hlock, lock)) {





   cookie.val = 1 + (prandom_u32() >> 16);
   hlock->pin_count += cookie.val;
   return cookie;
  }
 }

 WARN(1, "pinning an unheld lock\n");
 return cookie;
}

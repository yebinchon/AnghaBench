
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct held_lock* held_locks; } ;
struct lockdep_map {int dummy; } ;
struct held_lock {scalar_t__ irq_context; } ;


 scalar_t__ match_held_lock (struct held_lock*,struct lockdep_map*) ;

__attribute__((used)) static struct held_lock *find_held_lock(struct task_struct *curr,
     struct lockdep_map *lock,
     unsigned int depth, int *idx)
{
 struct held_lock *ret, *hlock, *prev_hlock;
 int i;

 i = depth - 1;
 hlock = curr->held_locks + i;
 ret = hlock;
 if (match_held_lock(hlock, lock))
  goto out;

 ret = ((void*)0);
 for (i--, prev_hlock = hlock--;
      i >= 0;
      i--, prev_hlock = hlock--) {



  if (prev_hlock->irq_context != hlock->irq_context) {
   ret = ((void*)0);
   break;
  }
  if (match_held_lock(hlock, lock)) {
   ret = hlock;
   break;
  }
 }

out:
 *idx = i;
 return ret;
}

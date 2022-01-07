
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next; int prev; } ;
struct mutex {TYPE_1__ wait_list; struct mutex* magic; } ;


 int DEBUG_LOCKS_WARN_ON (int) ;
 int debug_locks ;
 scalar_t__ likely (int ) ;

void debug_mutex_unlock(struct mutex *lock)
{
 if (likely(debug_locks)) {
  DEBUG_LOCKS_WARN_ON(lock->magic != lock);
  DEBUG_LOCKS_WARN_ON(!lock->wait_list.prev && !lock->wait_list.next);
 }
}

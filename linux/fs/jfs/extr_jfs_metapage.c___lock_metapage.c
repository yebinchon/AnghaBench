
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct metapage {int wait; int page; } ;
struct TYPE_2__ {int lockwait; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int INCREMENT (int ) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int add_wait_queue_exclusive (int *,int *) ;
 int current ;
 int io_schedule () ;
 int lock_page (int ) ;
 scalar_t__ metapage_locked (struct metapage*) ;
 TYPE_1__ mpStat ;
 int remove_wait_queue (int *,int *) ;
 int set_current_state (int ) ;
 scalar_t__ trylock_metapage (struct metapage*) ;
 int unlock_page (int ) ;
 int wait ;

__attribute__((used)) static inline void __lock_metapage(struct metapage *mp)
{
 DECLARE_WAITQUEUE(wait, current);
 INCREMENT(mpStat.lockwait);
 add_wait_queue_exclusive(&mp->wait, &wait);
 do {
  set_current_state(TASK_UNINTERRUPTIBLE);
  if (metapage_locked(mp)) {
   unlock_page(mp->page);
   io_schedule();
   lock_page(mp->page);
  }
 } while (trylock_metapage(mp));
 __set_current_state(TASK_RUNNING);
 remove_wait_queue(&mp->wait, &wait);
}

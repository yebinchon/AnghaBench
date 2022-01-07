
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int lock; } ;
struct slot_map {int c; TYPE_2__ q; int * map; } ;
struct TYPE_7__ {int entry; } ;


 int DEFINE_WAIT (TYPE_1__) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __add_wait_queue_entry_tail (TYPE_2__*,TYPE_1__*) ;
 int __remove_wait_queue (TYPE_2__*,TYPE_1__*) ;
 int __set_current_state (int ) ;
 scalar_t__ likely (int ) ;
 int list_empty (int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__ wait ;

__attribute__((used)) static void run_down(struct slot_map *m)
{
 DEFINE_WAIT(wait);
 spin_lock(&m->q.lock);
 if (m->c != -1) {
  for (;;) {
   if (likely(list_empty(&wait.entry)))
    __add_wait_queue_entry_tail(&m->q, &wait);
   set_current_state(TASK_UNINTERRUPTIBLE);

   if (m->c == -1)
    break;

   spin_unlock(&m->q.lock);
   schedule();
   spin_lock(&m->q.lock);
  }
  __remove_wait_queue(&m->q, &wait);
  __set_current_state(TASK_RUNNING);
 }
 m->map = ((void*)0);
 spin_unlock(&m->q.lock);
}

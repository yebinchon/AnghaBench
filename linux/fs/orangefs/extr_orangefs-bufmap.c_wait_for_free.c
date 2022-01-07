
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lock; } ;
struct slot_map {scalar_t__ c; TYPE_1__ q; } ;
struct TYPE_8__ {int entry; } ;


 int DEFINE_WAIT (TYPE_2__) ;
 int EINTR ;
 int ETIMEDOUT ;
 long HZ ;
 long ORANGEFS_BUFMAP_WAIT_TIMEOUT_SECS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __add_wait_queue_entry_tail_exclusive (TYPE_1__*,TYPE_2__*) ;
 int __set_current_state (int ) ;
 int __wake_up_locked_key (TYPE_1__*,int ,int *) ;
 int current ;
 scalar_t__ likely (int) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 long schedule_timeout (long) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 long slot_timeout_secs ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 TYPE_2__ wait ;
 scalar_t__ waitqueue_active (TYPE_1__*) ;

__attribute__((used)) static int wait_for_free(struct slot_map *m)
{
 long left = slot_timeout_secs * HZ;
 DEFINE_WAIT(wait);

 do {
  long n = left, t;
  if (likely(list_empty(&wait.entry)))
   __add_wait_queue_entry_tail_exclusive(&m->q, &wait);
  set_current_state(TASK_INTERRUPTIBLE);

  if (m->c > 0)
   break;

  if (m->c < 0) {


   if (n > ORANGEFS_BUFMAP_WAIT_TIMEOUT_SECS * HZ)
    n = ORANGEFS_BUFMAP_WAIT_TIMEOUT_SECS * HZ;
  }
  spin_unlock(&m->q.lock);
  t = schedule_timeout(n);
  spin_lock(&m->q.lock);
  if (unlikely(!t) && n != left && m->c < 0)
   left = t;
  else
   left = t + (left - n);
  if (signal_pending(current))
   left = -EINTR;
 } while (left > 0);

 if (!list_empty(&wait.entry))
  list_del(&wait.entry);
 else if (left <= 0 && waitqueue_active(&m->q))
  __wake_up_locked_key(&m->q, TASK_INTERRUPTIBLE, ((void*)0));
 __set_current_state(TASK_RUNNING);

 if (likely(left > 0))
  return 0;

 return left < 0 ? -EINTR : -ETIMEDOUT;
}

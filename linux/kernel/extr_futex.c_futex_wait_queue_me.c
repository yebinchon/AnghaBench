
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer_sleeper {scalar_t__ task; } ;
struct futex_q {int list; } ;
struct futex_hash_bucket {int dummy; } ;


 int HRTIMER_MODE_ABS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int freezable_schedule () ;
 int hrtimer_sleeper_start_expires (struct hrtimer_sleeper*,int ) ;
 scalar_t__ likely (int) ;
 int plist_node_empty (int *) ;
 int queue_me (struct futex_q*,struct futex_hash_bucket*) ;
 int set_current_state (int ) ;

__attribute__((used)) static void futex_wait_queue_me(struct futex_hash_bucket *hb, struct futex_q *q,
    struct hrtimer_sleeper *timeout)
{






 set_current_state(TASK_INTERRUPTIBLE);
 queue_me(q, hb);


 if (timeout)
  hrtimer_sleeper_start_expires(timeout, HRTIMER_MODE_ABS);





 if (likely(!plist_node_empty(&q->list))) {





  if (!timeout || timeout->task)
   freezable_schedule();
 }
 __set_current_state(TASK_RUNNING);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int sysfs_lock; } ;
struct elevator_queue {int dummy; } ;


 int __elevator_exit (struct request_queue*,struct elevator_queue*) ;
 int blk_mq_sched_free_requests (struct request_queue*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static inline void elevator_exit(struct request_queue *q,
  struct elevator_queue *e)
{
 lockdep_assert_held(&q->sysfs_lock);

 blk_mq_sched_free_requests(q);
 __elevator_exit(q, e);
}

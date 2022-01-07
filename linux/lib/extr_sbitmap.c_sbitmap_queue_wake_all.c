
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbq_wait_state {int wait; } ;
struct sbitmap_queue {struct sbq_wait_state* ws; int wake_index; } ;


 int SBQ_WAIT_QUEUES ;
 int atomic_read (int *) ;
 int sbq_index_inc (int) ;
 int smp_mb () ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

void sbitmap_queue_wake_all(struct sbitmap_queue *sbq)
{
 int i, wake_index;





 smp_mb();
 wake_index = atomic_read(&sbq->wake_index);
 for (i = 0; i < SBQ_WAIT_QUEUES; i++) {
  struct sbq_wait_state *ws = &sbq->ws[wake_index];

  if (waitqueue_active(&ws->wait))
   wake_up(&ws->wait);

  wake_index = sbq_index_inc(wake_index);
 }
}

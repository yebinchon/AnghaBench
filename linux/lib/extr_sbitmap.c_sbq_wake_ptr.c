
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbq_wait_state {int wait; } ;
struct sbitmap_queue {int wake_index; struct sbq_wait_state* ws; int ws_active; } ;


 int SBQ_WAIT_QUEUES ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int sbq_index_inc (int) ;
 scalar_t__ waitqueue_active (int *) ;

__attribute__((used)) static struct sbq_wait_state *sbq_wake_ptr(struct sbitmap_queue *sbq)
{
 int i, wake_index;

 if (!atomic_read(&sbq->ws_active))
  return ((void*)0);

 wake_index = atomic_read(&sbq->wake_index);
 for (i = 0; i < SBQ_WAIT_QUEUES; i++) {
  struct sbq_wait_state *ws = &sbq->ws[wake_index];

  if (waitqueue_active(&ws->wait)) {
   if (wake_index != atomic_read(&sbq->wake_index))
    atomic_set(&sbq->wake_index, wake_index);
   return ws;
  }

  wake_index = sbq_index_inc(wake_index);
 }

 return ((void*)0);
}

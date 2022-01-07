
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbitmap_queue {unsigned int wake_batch; TYPE_1__* ws; } ;
struct TYPE_2__ {int wait_cnt; } ;


 int SBQ_WAIT_QUEUES ;
 int WRITE_ONCE (unsigned int,unsigned int) ;
 int atomic_set (int *,int) ;
 unsigned int sbq_calc_wake_batch (struct sbitmap_queue*,unsigned int) ;
 int smp_mb () ;

__attribute__((used)) static void sbitmap_queue_update_wake_batch(struct sbitmap_queue *sbq,
         unsigned int depth)
{
 unsigned int wake_batch = sbq_calc_wake_batch(sbq, depth);
 int i;

 if (sbq->wake_batch != wake_batch) {
  WRITE_ONCE(sbq->wake_batch, wake_batch);





  smp_mb();
  for (i = 0; i < SBQ_WAIT_QUEUES; i++)
   atomic_set(&sbq->ws[i].wait_cnt, 1);
 }
}

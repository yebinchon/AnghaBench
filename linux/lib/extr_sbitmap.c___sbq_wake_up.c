
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbq_wait_state {int wait; int wait_cnt; } ;
struct sbitmap_queue {int wake_index; int wake_batch; } ;


 unsigned int READ_ONCE (int ) ;
 int atomic_cmpxchg (int *,int,unsigned int) ;
 int atomic_dec_return (int *) ;
 int sbq_index_atomic_inc (int *) ;
 struct sbq_wait_state* sbq_wake_ptr (struct sbitmap_queue*) ;
 int smp_mb__before_atomic () ;
 int wake_up_nr (int *,unsigned int) ;

__attribute__((used)) static bool __sbq_wake_up(struct sbitmap_queue *sbq)
{
 struct sbq_wait_state *ws;
 unsigned int wake_batch;
 int wait_cnt;

 ws = sbq_wake_ptr(sbq);
 if (!ws)
  return 0;

 wait_cnt = atomic_dec_return(&ws->wait_cnt);
 if (wait_cnt <= 0) {
  int ret;

  wake_batch = READ_ONCE(sbq->wake_batch);






  smp_mb__before_atomic();






  ret = atomic_cmpxchg(&ws->wait_cnt, wait_cnt, wake_batch);
  if (ret == wait_cnt) {
   sbq_index_atomic_inc(&sbq->wake_index);
   wake_up_nr(&ws->wait, wake_batch);
   return 0;
  }

  return 1;
 }

 return 0;
}

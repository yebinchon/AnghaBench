
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 scalar_t__ atomic_read (int *) ;
 int cond_resched () ;
 int * congestion_wqh ;
 int finish_wait (int *,int *) ;
 long io_schedule_timeout (long) ;
 unsigned long jiffies ;
 int jiffies_to_usecs (unsigned long) ;
 int * nr_wb_congested ;
 int prepare_to_wait (int *,int *,int ) ;
 int trace_writeback_wait_iff_congested (int ,int ) ;
 int wait ;

long wait_iff_congested(int sync, long timeout)
{
 long ret;
 unsigned long start = jiffies;
 DEFINE_WAIT(wait);
 wait_queue_head_t *wqh = &congestion_wqh[sync];





 if (atomic_read(&nr_wb_congested[sync]) == 0) {
  cond_resched();


  ret = timeout - (jiffies - start);
  if (ret < 0)
   ret = 0;

  goto out;
 }


 prepare_to_wait(wqh, &wait, TASK_UNINTERRUPTIBLE);
 ret = io_schedule_timeout(timeout);
 finish_wait(wqh, &wait);

out:
 trace_writeback_wait_iff_congested(jiffies_to_usecs(timeout),
     jiffies_to_usecs(jiffies - start));

 return ret;
}

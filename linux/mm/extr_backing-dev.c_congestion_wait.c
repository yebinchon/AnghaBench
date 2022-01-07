
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int * congestion_wqh ;
 int finish_wait (int *,int *) ;
 long io_schedule_timeout (long) ;
 unsigned long jiffies ;
 int jiffies_to_usecs (unsigned long) ;
 int prepare_to_wait (int *,int *,int ) ;
 int trace_writeback_congestion_wait (int ,int ) ;
 int wait ;

long congestion_wait(int sync, long timeout)
{
 long ret;
 unsigned long start = jiffies;
 DEFINE_WAIT(wait);
 wait_queue_head_t *wqh = &congestion_wqh[sync];

 prepare_to_wait(wqh, &wait, TASK_UNINTERRUPTIBLE);
 ret = io_schedule_timeout(timeout);
 finish_wait(wqh, &wait);

 trace_writeback_congestion_wait(jiffies_to_usecs(timeout),
     jiffies_to_usecs(jiffies - start));

 return ret;
}

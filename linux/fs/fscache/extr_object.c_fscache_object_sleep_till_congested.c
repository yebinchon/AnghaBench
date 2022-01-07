
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;


 int DEFINE_WAIT (int ) ;
 int add_wait_queue_exclusive (int *,int *) ;
 int finish_wait (int *,int *) ;
 int fscache_object_cong_wait ;
 int fscache_object_congested () ;
 long schedule_timeout (long) ;
 int * this_cpu_ptr (int *) ;
 int wait ;

bool fscache_object_sleep_till_congested(signed long *timeoutp)
{
 wait_queue_head_t *cong_wq = this_cpu_ptr(&fscache_object_cong_wait);
 DEFINE_WAIT(wait);

 if (fscache_object_congested())
  return 1;

 add_wait_queue_exclusive(cong_wq, &wait);
 if (!fscache_object_congested())
  *timeoutp = schedule_timeout(*timeoutp);
 finish_wait(cong_wq, &wait);

 return fscache_object_congested();
}

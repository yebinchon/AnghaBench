
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kthread_run (int ,int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int simple_thread_cnt ;
 int simple_thread_fn ;
 int simple_tsk_fn ;
 int thread_mutex ;

int foo_bar_reg(void)
{
 mutex_lock(&thread_mutex);
 if (simple_thread_cnt++)
  goto out;

 pr_info("Starting thread for foo_bar_fn\n");





 simple_tsk_fn = kthread_run(simple_thread_fn, ((void*)0), "event-sample-fn");
 out:
 mutex_unlock(&thread_mutex);
 return 0;
}

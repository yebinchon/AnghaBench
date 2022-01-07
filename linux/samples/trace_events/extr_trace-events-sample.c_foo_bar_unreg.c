
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kthread_stop (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 scalar_t__ simple_thread_cnt ;
 int * simple_tsk_fn ;
 int thread_mutex ;

void foo_bar_unreg(void)
{
 mutex_lock(&thread_mutex);
 if (--simple_thread_cnt)
  goto out;

 pr_info("Killing thread for foo_bar_fn\n");
 if (simple_tsk_fn)
  kthread_stop(simple_tsk_fn);
 simple_tsk_fn = ((void*)0);
 out:
 mutex_unlock(&thread_mutex);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_MEMDIE ;
 int atomic_dec_return (int *) ;
 int clear_thread_flag (int ) ;
 int oom_victims ;
 int oom_victims_wait ;
 int wake_up_all (int *) ;

void exit_oom_victim(void)
{
 clear_thread_flag(TIF_MEMDIE);

 if (!atomic_dec_return(&oom_victims))
  wake_up_all(&oom_victims_wait);
}

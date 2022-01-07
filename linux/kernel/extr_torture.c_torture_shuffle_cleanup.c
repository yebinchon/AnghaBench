
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VERBOSE_TOROUT_STRING (char*) ;
 int free_cpumask_var (int ) ;
 int kthread_stop (int *) ;
 int shuffle_tmp_mask ;
 int * shuffler_task ;
 int torture_shuffle_task_unregister_all () ;

__attribute__((used)) static void torture_shuffle_cleanup(void)
{
 torture_shuffle_task_unregister_all();
 if (shuffler_task) {
  VERBOSE_TOROUT_STRING("Stopping torture_shuffle task");
  kthread_stop(shuffler_task);
  free_cpumask_var(shuffle_tmp_mask);
 }
 shuffler_task = ((void*)0);
}

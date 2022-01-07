
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int CONFIG_MMU ;
 int IS_ENABLED (int ) ;
 int TIF_MEMDIE ;
 int test_thread_flag (int ) ;
 int tsk_is_oom_victim (struct task_struct*) ;

__attribute__((used)) static bool oom_reserves_allowed(struct task_struct *tsk)
{
 if (!tsk_is_oom_victim(tsk))
  return 0;





 if (!IS_ENABLED(CONFIG_MMU) && !test_thread_flag(TIF_MEMDIE))
  return 0;

 return 1;
}

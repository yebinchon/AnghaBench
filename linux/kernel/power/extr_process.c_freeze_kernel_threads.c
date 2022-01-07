
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int in_atomic () ;
 int pm_nosig_freezing ;
 int pr_cont (char*) ;
 int pr_info (char*) ;
 int thaw_kernel_threads () ;
 int try_to_freeze_tasks (int) ;

int freeze_kernel_threads(void)
{
 int error;

 pr_info("Freezing remaining freezable tasks ... ");

 pm_nosig_freezing = 1;
 error = try_to_freeze_tasks(0);
 if (!error)
  pr_cont("done.");

 pr_cont("\n");
 BUG_ON(in_atomic());

 if (error)
  thaw_kernel_threads();
 return error;
}

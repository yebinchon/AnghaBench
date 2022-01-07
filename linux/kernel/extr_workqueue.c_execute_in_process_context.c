
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* work_func_t ) (int *) ;
struct execute_work {int work; } ;


 int INIT_WORK (int *,int (*) (int *)) ;
 int in_interrupt () ;
 int schedule_work (int *) ;

int execute_in_process_context(work_func_t fn, struct execute_work *ew)
{
 if (!in_interrupt()) {
  fn(&ew->work);
  return 0;
 }

 INIT_WORK(&ew->work, fn);
 schedule_work(&ew->work);

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker {scalar_t__ current_func; } ;


 scalar_t__ async_run_entry_fn ;
 struct worker* current_wq_worker () ;

bool current_is_async(void)
{
 struct worker *worker = current_wq_worker();

 return worker && worker->current_func == async_run_entry_fn;
}

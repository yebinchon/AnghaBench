
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker {struct work_struct* current_work; } ;
struct work_struct {int dummy; } ;


 struct worker* current_wq_worker () ;

struct work_struct *current_work(void)
{
 struct worker *worker = current_wq_worker();

 return worker ? worker->current_work : ((void*)0);
}

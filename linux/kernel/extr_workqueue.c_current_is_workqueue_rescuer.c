
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker {scalar_t__ rescue_wq; } ;


 struct worker* current_wq_worker () ;

bool current_is_workqueue_rescuer(void)
{
 struct worker *worker = current_wq_worker();

 return worker && worker->rescue_wq;
}

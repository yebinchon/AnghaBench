
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct workqueue_struct {int dummy; } ;
struct worker {TYPE_1__* current_pwq; } ;
struct TYPE_2__ {struct workqueue_struct* wq; } ;


 struct worker* current_wq_worker () ;

__attribute__((used)) static bool is_chained_work(struct workqueue_struct *wq)
{
 struct worker *worker;

 worker = current_wq_worker();




 return worker && worker->current_pwq->wq == wq;
}

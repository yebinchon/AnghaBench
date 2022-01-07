
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct delayed_work {int work; int wq; int cpu; } ;


 int __queue_work (int ,int ,int *) ;
 struct delayed_work* dwork ;
 struct delayed_work* from_timer (int ,struct timer_list*,int ) ;
 int timer ;

void delayed_work_timer_fn(struct timer_list *t)
{
 struct delayed_work *dwork = from_timer(dwork, t, timer);


 __queue_work(dwork->cpu, dwork->wq, &dwork->work);
}

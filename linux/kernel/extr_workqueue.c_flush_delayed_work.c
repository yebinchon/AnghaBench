
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delayed_work {int work; int wq; int cpu; int timer; } ;


 int __queue_work (int ,int ,int *) ;
 scalar_t__ del_timer_sync (int *) ;
 int flush_work (int *) ;
 int local_irq_disable () ;
 int local_irq_enable () ;

bool flush_delayed_work(struct delayed_work *dwork)
{
 local_irq_disable();
 if (del_timer_sync(&dwork->timer))
  __queue_work(dwork->cpu, dwork->wq, &dwork->work);
 local_irq_enable();
 return flush_work(&dwork->work);
}

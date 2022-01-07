
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct idletimer_tg {int work; TYPE_2__ attr; } ;


 struct idletimer_tg* from_timer (int ,struct timer_list*,int ) ;
 int pr_debug (char*,int ) ;
 int schedule_work (int *) ;
 struct idletimer_tg* timer ;

__attribute__((used)) static void idletimer_tg_expired(struct timer_list *t)
{
 struct idletimer_tg *timer = from_timer(timer, t, timer);

 pr_debug("timer %s expired\n", timer->attr.attr.name);

 schedule_work(&timer->work);
}

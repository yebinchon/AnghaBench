
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alarm_base {int (* gettime ) () ;int lock; } ;
struct alarm {size_t type; int timer; } ;


 struct alarm_base* alarm_bases ;
 int alarmtimer_dequeue (struct alarm_base*,struct alarm*) ;
 int hrtimer_try_to_cancel (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 () ;
 int trace_alarmtimer_cancel (struct alarm*,int ) ;

int alarm_try_to_cancel(struct alarm *alarm)
{
 struct alarm_base *base = &alarm_bases[alarm->type];
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&base->lock, flags);
 ret = hrtimer_try_to_cancel(&alarm->timer);
 if (ret >= 0)
  alarmtimer_dequeue(base, alarm);
 spin_unlock_irqrestore(&base->lock, flags);

 trace_alarmtimer_cancel(alarm, base->gettime());
 return ret;
}

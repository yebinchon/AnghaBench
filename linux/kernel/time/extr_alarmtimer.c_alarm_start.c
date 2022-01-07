
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alarm_base {int (* gettime ) () ;int lock; } ;
struct TYPE_2__ {int expires; } ;
struct alarm {size_t type; TYPE_1__ node; int timer; } ;
typedef int ktime_t ;


 int HRTIMER_MODE_ABS ;
 struct alarm_base* alarm_bases ;
 int alarmtimer_enqueue (struct alarm_base*,struct alarm*) ;
 int hrtimer_start (int *,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 () ;
 int trace_alarmtimer_start (struct alarm*,int ) ;

void alarm_start(struct alarm *alarm, ktime_t start)
{
 struct alarm_base *base = &alarm_bases[alarm->type];
 unsigned long flags;

 spin_lock_irqsave(&base->lock, flags);
 alarm->node.expires = start;
 alarmtimer_enqueue(base, alarm);
 hrtimer_start(&alarm->timer, alarm->node.expires, HRTIMER_MODE_ABS);
 spin_unlock_irqrestore(&base->lock, flags);

 trace_alarmtimer_start(alarm, base->gettime());
}

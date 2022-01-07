
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alarm_base {int timerqueue; } ;
struct alarm {int state; int node; } ;


 int ALARMTIMER_STATE_ENQUEUED ;
 int timerqueue_add (int *,int *) ;
 int timerqueue_del (int *,int *) ;

__attribute__((used)) static void alarmtimer_enqueue(struct alarm_base *base, struct alarm *alarm)
{
 if (alarm->state & ALARMTIMER_STATE_ENQUEUED)
  timerqueue_del(&base->timerqueue, &alarm->node);

 timerqueue_add(&base->timerqueue, &alarm->node);
 alarm->state |= ALARMTIMER_STATE_ENQUEUED;
}

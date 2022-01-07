
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hrtimer_clock_base {int index; int active; TYPE_1__* cpu_base; } ;
struct hrtimer {int node; int state; } ;
typedef enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;
struct TYPE_2__ {int active_bases; } ;


 int HRTIMER_STATE_ENQUEUED ;
 int debug_activate (struct hrtimer*,int) ;
 int timerqueue_add (int *,int *) ;

__attribute__((used)) static int enqueue_hrtimer(struct hrtimer *timer,
      struct hrtimer_clock_base *base,
      enum hrtimer_mode mode)
{
 debug_activate(timer, mode);

 base->cpu_base->active_bases |= 1 << base->index;

 timer->state = HRTIMER_STATE_ENQUEUED;

 return timerqueue_add(&base->active, &timer->node);
}

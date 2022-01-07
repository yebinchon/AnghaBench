
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hrtimer_cpu_base {int active_bases; struct hrtimer* next_timer; } ;
struct hrtimer_clock_base {int index; int active; struct hrtimer_cpu_base* cpu_base; } ;
struct hrtimer {int state; int node; } ;


 int HRTIMER_STATE_ENQUEUED ;
 int hrtimer_force_reprogram (struct hrtimer_cpu_base*,int) ;
 int timerqueue_del (int *,int *) ;

__attribute__((used)) static void __remove_hrtimer(struct hrtimer *timer,
        struct hrtimer_clock_base *base,
        u8 newstate, int reprogram)
{
 struct hrtimer_cpu_base *cpu_base = base->cpu_base;
 u8 state = timer->state;

 timer->state = newstate;
 if (!(state & HRTIMER_STATE_ENQUEUED))
  return;

 if (!timerqueue_del(&base->active, &timer->node))
  cpu_base->active_bases &= ~(1 << base->index);
 if (reprogram && timer == cpu_base->next_timer)
  hrtimer_force_reprogram(cpu_base, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer_cpu_base {int * clock_base; } ;
struct hrtimer {int is_soft; int is_hard; int node; int * base; } ;
typedef enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;
typedef scalar_t__ clockid_t ;


 scalar_t__ CLOCK_MONOTONIC ;
 scalar_t__ CLOCK_REALTIME ;
 int CONFIG_PREEMPT_RT ;
 int HRTIMER_MAX_CLOCK_BASES ;
 int HRTIMER_MODE_HARD ;
 int HRTIMER_MODE_REL ;
 int HRTIMER_MODE_SOFT ;
 scalar_t__ IS_ENABLED (int ) ;
 int hrtimer_bases ;
 scalar_t__ hrtimer_clockid_to_base (scalar_t__) ;
 int memset (struct hrtimer*,int ,int) ;
 struct hrtimer_cpu_base* raw_cpu_ptr (int *) ;
 int timerqueue_init (int *) ;

__attribute__((used)) static void __hrtimer_init(struct hrtimer *timer, clockid_t clock_id,
      enum hrtimer_mode mode)
{
 bool softtimer = !!(mode & HRTIMER_MODE_SOFT);
 struct hrtimer_cpu_base *cpu_base;
 int base;







 if (IS_ENABLED(CONFIG_PREEMPT_RT) && !(mode & HRTIMER_MODE_HARD))
  softtimer = 1;

 memset(timer, 0, sizeof(struct hrtimer));

 cpu_base = raw_cpu_ptr(&hrtimer_bases);






 if (clock_id == CLOCK_REALTIME && mode & HRTIMER_MODE_REL)
  clock_id = CLOCK_MONOTONIC;

 base = softtimer ? HRTIMER_MAX_CLOCK_BASES / 2 : 0;
 base += hrtimer_clockid_to_base(clock_id);
 timer->is_soft = softtimer;
 timer->is_hard = !softtimer;
 timer->base = &cpu_base->clock_base[base];
 timerqueue_init(&timer->node);
}

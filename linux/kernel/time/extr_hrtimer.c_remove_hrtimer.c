
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hrtimer_clock_base {scalar_t__ cpu_base; } ;
struct hrtimer {int state; } ;


 int HRTIMER_STATE_INACTIVE ;
 int __remove_hrtimer (struct hrtimer*,struct hrtimer_clock_base*,int ,int) ;
 int debug_deactivate (struct hrtimer*) ;
 int hrtimer_bases ;
 scalar_t__ hrtimer_is_queued (struct hrtimer*) ;
 scalar_t__ this_cpu_ptr (int *) ;

__attribute__((used)) static inline int
remove_hrtimer(struct hrtimer *timer, struct hrtimer_clock_base *base, bool restart)
{
 if (hrtimer_is_queued(timer)) {
  u8 state = timer->state;
  int reprogram;
  debug_deactivate(timer);
  reprogram = base->cpu_base == this_cpu_ptr(&hrtimer_bases);

  if (!restart)
   state = HRTIMER_STATE_INACTIVE;

  __remove_hrtimer(timer, base, state, reprogram);
  return 1;
 }
 return 0;
}

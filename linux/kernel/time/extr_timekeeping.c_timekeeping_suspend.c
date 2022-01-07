
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct timespec64 {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_3__ {int cycle_last; struct clocksource* clock; } ;
struct timekeeper {TYPE_1__ tkr_mono; } ;
struct clocksource {int dummy; } ;
struct TYPE_4__ {int seq; struct timekeeper timekeeper; } ;


 int TK_MIRROR ;
 int abs (scalar_t__) ;
 int clockevents_suspend () ;
 int clocksource_start_suspend_timing (struct clocksource*,int ) ;
 int clocksource_suspend () ;
 int halt_fast_timekeeper (struct timekeeper*) ;
 int persistent_clock_exists ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int read_persistent_clock64 (struct timespec64*) ;
 int suspend_timing_needed ;
 int tick_suspend () ;
 int timekeeper_lock ;
 int timekeeping_forward_now (struct timekeeper*) ;
 struct timespec64 timekeeping_suspend_time ;
 int timekeeping_suspended ;
 int timekeeping_update (struct timekeeper*,int ) ;
 struct timespec64 timespec64_add (struct timespec64,struct timespec64) ;
 struct timespec64 timespec64_sub (struct timespec64,struct timespec64) ;
 TYPE_2__ tk_core ;
 struct timespec64 tk_xtime (struct timekeeper*) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;

int timekeeping_suspend(void)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 unsigned long flags;
 struct timespec64 delta, delta_delta;
 static struct timespec64 old_delta;
 struct clocksource *curr_clock;
 u64 cycle_now;

 read_persistent_clock64(&timekeeping_suspend_time);






 if (timekeeping_suspend_time.tv_sec || timekeeping_suspend_time.tv_nsec)
  persistent_clock_exists = 1;

 suspend_timing_needed = 1;

 raw_spin_lock_irqsave(&timekeeper_lock, flags);
 write_seqcount_begin(&tk_core.seq);
 timekeeping_forward_now(tk);
 timekeeping_suspended = 1;






 curr_clock = tk->tkr_mono.clock;
 cycle_now = tk->tkr_mono.cycle_last;
 clocksource_start_suspend_timing(curr_clock, cycle_now);

 if (persistent_clock_exists) {






  delta = timespec64_sub(tk_xtime(tk), timekeeping_suspend_time);
  delta_delta = timespec64_sub(delta, old_delta);
  if (abs(delta_delta.tv_sec) >= 2) {




   old_delta = delta;
  } else {

   timekeeping_suspend_time =
    timespec64_add(timekeeping_suspend_time, delta_delta);
  }
 }

 timekeeping_update(tk, TK_MIRROR);
 halt_fast_timekeeper(tk);
 write_seqcount_end(&tk_core.seq);
 raw_spin_unlock_irqrestore(&timekeeper_lock, flags);

 tick_suspend();
 clocksource_suspend();
 clockevents_suspend();

 return 0;
}

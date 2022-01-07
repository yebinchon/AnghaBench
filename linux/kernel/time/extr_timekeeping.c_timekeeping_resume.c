
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct timespec64 {int dummy; } ;
struct TYPE_4__ {scalar_t__ cycle_last; } ;
struct TYPE_6__ {scalar_t__ cycle_last; struct clocksource* clock; } ;
struct timekeeper {scalar_t__ ntp_error; TYPE_1__ tkr_raw; TYPE_3__ tkr_mono; } ;
struct clocksource {int dummy; } ;
struct TYPE_5__ {int seq; struct timekeeper timekeeper; } ;


 int TK_CLOCK_WAS_SET ;
 int TK_MIRROR ;
 int __timekeeping_inject_sleeptime (struct timekeeper*,struct timespec64*) ;
 int clockevents_resume () ;
 int clocksource_resume () ;
 scalar_t__ clocksource_stop_suspend_timing (struct clocksource*,scalar_t__) ;
 int hrtimers_resume () ;
 struct timespec64 ns_to_timespec64 (scalar_t__) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int read_persistent_clock64 (struct timespec64*) ;
 int suspend_timing_needed ;
 int tick_resume () ;
 int timekeeper_lock ;
 int timekeeping_suspend_time ;
 scalar_t__ timekeeping_suspended ;
 int timekeeping_update (struct timekeeper*,int) ;
 scalar_t__ timespec64_compare (struct timespec64*,int *) ;
 struct timespec64 timespec64_sub (struct timespec64,int ) ;
 scalar_t__ tk_clock_read (TYPE_3__*) ;
 TYPE_2__ tk_core ;
 int touch_softlockup_watchdog () ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;

void timekeeping_resume(void)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 struct clocksource *clock = tk->tkr_mono.clock;
 unsigned long flags;
 struct timespec64 ts_new, ts_delta;
 u64 cycle_now, nsec;
 bool inject_sleeptime = 0;

 read_persistent_clock64(&ts_new);

 clockevents_resume();
 clocksource_resume();

 raw_spin_lock_irqsave(&timekeeper_lock, flags);
 write_seqcount_begin(&tk_core.seq);
 cycle_now = tk_clock_read(&tk->tkr_mono);
 nsec = clocksource_stop_suspend_timing(clock, cycle_now);
 if (nsec > 0) {
  ts_delta = ns_to_timespec64(nsec);
  inject_sleeptime = 1;
 } else if (timespec64_compare(&ts_new, &timekeeping_suspend_time) > 0) {
  ts_delta = timespec64_sub(ts_new, timekeeping_suspend_time);
  inject_sleeptime = 1;
 }

 if (inject_sleeptime) {
  suspend_timing_needed = 0;
  __timekeeping_inject_sleeptime(tk, &ts_delta);
 }


 tk->tkr_mono.cycle_last = cycle_now;
 tk->tkr_raw.cycle_last = cycle_now;

 tk->ntp_error = 0;
 timekeeping_suspended = 0;
 timekeeping_update(tk, TK_MIRROR | TK_CLOCK_WAS_SET);
 write_seqcount_end(&tk_core.seq);
 raw_spin_unlock_irqrestore(&timekeeper_lock, flags);

 touch_softlockup_watchdog();

 tick_resume();
 hrtimers_resume();
}

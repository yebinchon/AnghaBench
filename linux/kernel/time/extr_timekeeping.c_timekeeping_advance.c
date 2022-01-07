
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {int mask; int cycle_last; } ;
struct timekeeper {scalar_t__ cycle_interval; TYPE_2__ tkr_mono; } ;
typedef enum timekeeping_adv_mode { ____Placeholder_timekeeping_adv_mode } timekeeping_adv_mode ;
struct TYPE_3__ {int seq; struct timekeeper timekeeper; } ;


 int TK_ADV_TICK ;
 unsigned int accumulate_nsecs_to_secs (struct timekeeper*) ;
 int clock_was_set_delayed () ;
 scalar_t__ clocksource_delta (int ,int ,int ) ;
 int ilog2 (scalar_t__) ;
 scalar_t__ logarithmic_accumulation (struct timekeeper*,scalar_t__,int,unsigned int*) ;
 int max (int ,int) ;
 int memcpy (struct timekeeper*,struct timekeeper*,int) ;
 int min (int,int) ;
 scalar_t__ ntp_tick_length () ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct timekeeper shadow_timekeeper ;
 int timekeeper_lock ;
 int timekeeping_adjust (struct timekeeper*,scalar_t__) ;
 int timekeeping_check_update (struct timekeeper*,scalar_t__) ;
 int timekeeping_suspended ;
 int timekeeping_update (struct timekeeper*,unsigned int) ;
 int tk_clock_read (TYPE_2__*) ;
 TYPE_1__ tk_core ;
 scalar_t__ unlikely (int ) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;

__attribute__((used)) static void timekeeping_advance(enum timekeeping_adv_mode mode)
{
 struct timekeeper *real_tk = &tk_core.timekeeper;
 struct timekeeper *tk = &shadow_timekeeper;
 u64 offset;
 int shift = 0, maxshift;
 unsigned int clock_set = 0;
 unsigned long flags;

 raw_spin_lock_irqsave(&timekeeper_lock, flags);


 if (unlikely(timekeeping_suspended))
  goto out;







 offset = clocksource_delta(tk_clock_read(&tk->tkr_mono),
       tk->tkr_mono.cycle_last, tk->tkr_mono.mask);


 if (offset < real_tk->cycle_interval && mode == TK_ADV_TICK)
  goto out;



 timekeeping_check_update(tk, offset);
 shift = ilog2(offset) - ilog2(tk->cycle_interval);
 shift = max(0, shift);

 maxshift = (64 - (ilog2(ntp_tick_length())+1)) - 1;
 shift = min(shift, maxshift);
 while (offset >= tk->cycle_interval) {
  offset = logarithmic_accumulation(tk, offset, shift,
       &clock_set);
  if (offset < tk->cycle_interval<<shift)
   shift--;
 }


 timekeeping_adjust(tk, offset);





 clock_set |= accumulate_nsecs_to_secs(tk);

 write_seqcount_begin(&tk_core.seq);
 timekeeping_update(tk, clock_set);
 memcpy(real_tk, tk, sizeof(*tk));

 write_seqcount_end(&tk_core.seq);
out:
 raw_spin_unlock_irqrestore(&timekeeper_lock, flags);
 if (clock_set)

  clock_was_set_delayed();
}

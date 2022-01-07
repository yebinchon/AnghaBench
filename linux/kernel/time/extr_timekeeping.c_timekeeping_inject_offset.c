
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {scalar_t__ tv_nsec; } ;
struct timekeeper {int wall_to_monotonic; } ;
struct TYPE_2__ {int seq; struct timekeeper timekeeper; } ;


 int EINVAL ;
 scalar_t__ NSEC_PER_SEC ;
 int TK_CLEAR_NTP ;
 int TK_CLOCK_WAS_SET ;
 int TK_MIRROR ;
 int clock_was_set () ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int timekeeper_lock ;
 int timekeeping_forward_now (struct timekeeper*) ;
 int timekeeping_update (struct timekeeper*,int) ;
 struct timespec64 timespec64_add (int ,struct timespec64 const) ;
 scalar_t__ timespec64_compare (int *,struct timespec64 const*) ;
 int timespec64_sub (int ,struct timespec64 const) ;
 int timespec64_valid_settod (struct timespec64*) ;
 TYPE_1__ tk_core ;
 int tk_set_wall_to_mono (struct timekeeper*,int ) ;
 int tk_xtime (struct timekeeper*) ;
 int tk_xtime_add (struct timekeeper*,struct timespec64 const*) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;

__attribute__((used)) static int timekeeping_inject_offset(const struct timespec64 *ts)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 unsigned long flags;
 struct timespec64 tmp;
 int ret = 0;

 if (ts->tv_nsec < 0 || ts->tv_nsec >= NSEC_PER_SEC)
  return -EINVAL;

 raw_spin_lock_irqsave(&timekeeper_lock, flags);
 write_seqcount_begin(&tk_core.seq);

 timekeeping_forward_now(tk);


 tmp = timespec64_add(tk_xtime(tk), *ts);
 if (timespec64_compare(&tk->wall_to_monotonic, ts) > 0 ||
     !timespec64_valid_settod(&tmp)) {
  ret = -EINVAL;
  goto error;
 }

 tk_xtime_add(tk, ts);
 tk_set_wall_to_mono(tk, timespec64_sub(tk->wall_to_monotonic, *ts));

error:
 timekeeping_update(tk, TK_CLEAR_NTP | TK_MIRROR | TK_CLOCK_WAS_SET);

 write_seqcount_end(&tk_core.seq);
 raw_spin_unlock_irqrestore(&timekeeper_lock, flags);


 clock_was_set();

 return ret;
}

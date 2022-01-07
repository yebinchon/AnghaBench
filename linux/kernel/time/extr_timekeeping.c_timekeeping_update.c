
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ base; scalar_t__ base_real; } ;
struct timekeeper {int clock_was_set_seq; TYPE_1__ tkr_raw; TYPE_1__ tkr_mono; scalar_t__ offs_real; scalar_t__ ntp_error; } ;
struct TYPE_4__ {int timekeeper; } ;


 unsigned int TK_CLEAR_NTP ;
 unsigned int TK_CLOCK_WAS_SET ;
 unsigned int TK_MIRROR ;
 int memcpy (int *,int *,int) ;
 int ntp_clear () ;
 int shadow_timekeeper ;
 TYPE_2__ tk_core ;
 int tk_fast_mono ;
 int tk_fast_raw ;
 int tk_update_ktime_data (struct timekeeper*) ;
 int tk_update_leap_state (struct timekeeper*) ;
 int update_fast_timekeeper (TYPE_1__*,int *) ;
 int update_pvclock_gtod (struct timekeeper*,unsigned int) ;
 int update_vsyscall (struct timekeeper*) ;

__attribute__((used)) static void timekeeping_update(struct timekeeper *tk, unsigned int action)
{
 if (action & TK_CLEAR_NTP) {
  tk->ntp_error = 0;
  ntp_clear();
 }

 tk_update_leap_state(tk);
 tk_update_ktime_data(tk);

 update_vsyscall(tk);
 update_pvclock_gtod(tk, action & TK_CLOCK_WAS_SET);

 tk->tkr_mono.base_real = tk->tkr_mono.base + tk->offs_real;
 update_fast_timekeeper(&tk->tkr_mono, &tk_fast_mono);
 update_fast_timekeeper(&tk->tkr_raw, &tk_fast_raw);

 if (action & TK_CLOCK_WAS_SET)
  tk->clock_was_set_seq++;





 if (action & TK_MIRROR)
  memcpy(&shadow_timekeeper, &tk_core.timekeeper,
         sizeof(tk_core.timekeeper));
}

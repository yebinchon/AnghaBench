
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_5__ {int mult; } ;
struct TYPE_4__ {int mult; } ;
struct timekeeper {TYPE_2__ tkr_raw; TYPE_1__ tkr_mono; } ;
struct system_time_snapshot {int real; int raw; } ;
struct system_device_crosststamp {void* sys_realtime; void* sys_monoraw; } ;
struct TYPE_6__ {struct timekeeper timekeeper; } ;


 void* ktime_add_ns (int ,scalar_t__) ;
 int ktime_sub (void*,int ) ;
 void* ktime_sub_ns (void*,scalar_t__) ;
 scalar_t__ ktime_to_ns (int ) ;
 scalar_t__ mul_u64_u32_div (scalar_t__,int ,int ) ;
 int scale64_check_overflow (scalar_t__,scalar_t__,scalar_t__*) ;
 TYPE_3__ tk_core ;

__attribute__((used)) static int adjust_historical_crosststamp(struct system_time_snapshot *history,
      u64 partial_history_cycles,
      u64 total_history_cycles,
      bool discontinuity,
      struct system_device_crosststamp *ts)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 u64 corr_raw, corr_real;
 bool interp_forward;
 int ret;

 if (total_history_cycles == 0 || partial_history_cycles == 0)
  return 0;


 interp_forward = partial_history_cycles > total_history_cycles / 2;
 partial_history_cycles = interp_forward ?
  total_history_cycles - partial_history_cycles :
  partial_history_cycles;





 corr_raw = (u64)ktime_to_ns(
  ktime_sub(ts->sys_monoraw, history->raw));
 ret = scale64_check_overflow(partial_history_cycles,
         total_history_cycles, &corr_raw);
 if (ret)
  return ret;
 if (discontinuity) {
  corr_real = mul_u64_u32_div
   (corr_raw, tk->tkr_mono.mult, tk->tkr_raw.mult);
 } else {
  corr_real = (u64)ktime_to_ns(
   ktime_sub(ts->sys_realtime, history->real));
  ret = scale64_check_overflow(partial_history_cycles,
          total_history_cycles, &corr_real);
  if (ret)
   return ret;
 }


 if (interp_forward) {
  ts->sys_monoraw = ktime_add_ns(history->raw, corr_raw);
  ts->sys_realtime = ktime_add_ns(history->real, corr_real);
 } else {
  ts->sys_monoraw = ktime_sub_ns(ts->sys_monoraw, corr_raw);
  ts->sys_realtime = ktime_sub_ns(ts->sys_realtime, corr_real);
 }

 return 0;
}

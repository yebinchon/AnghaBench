
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct perf_tsc_conversion {int time_mult; int time_zero; int time_shift; } ;
struct jit_buf_desc {TYPE_2__* session; int use_arch_timestamp; } ;
struct TYPE_3__ {int time_zero; int time_mult; int time_shift; } ;
struct TYPE_4__ {TYPE_1__ time_conv; } ;


 int tsc_to_perf_time (int ,struct perf_tsc_conversion*) ;

__attribute__((used)) static uint64_t convert_timestamp(struct jit_buf_desc *jd, uint64_t timestamp)
{
 struct perf_tsc_conversion tc;

 if (!jd->use_arch_timestamp)
  return timestamp;

 tc.time_shift = jd->session->time_conv.time_shift;
 tc.time_mult = jd->session->time_conv.time_mult;
 tc.time_zero = jd->session->time_conv.time_zero;

 if (!tc.time_mult)
  return 0;

 return tsc_to_perf_time(timestamp, &tc);
}

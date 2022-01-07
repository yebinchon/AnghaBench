
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int xtime_nsec; int shift; } ;
struct TYPE_4__ {int xtime_nsec; int shift; } ;
struct timekeeper {int raw_sec; TYPE_1__ tkr_raw; int xtime_sec; TYPE_2__ tkr_mono; } ;


 scalar_t__ NSEC_PER_SEC ;

__attribute__((used)) static inline void tk_normalize_xtime(struct timekeeper *tk)
{
 while (tk->tkr_mono.xtime_nsec >= ((u64)NSEC_PER_SEC << tk->tkr_mono.shift)) {
  tk->tkr_mono.xtime_nsec -= (u64)NSEC_PER_SEC << tk->tkr_mono.shift;
  tk->xtime_sec++;
 }
 while (tk->tkr_raw.xtime_nsec >= ((u64)NSEC_PER_SEC << tk->tkr_raw.shift)) {
  tk->tkr_raw.xtime_nsec -= (u64)NSEC_PER_SEC << tk->tkr_raw.shift;
  tk->raw_sec++;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct timespec64 {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_2__ {int xtime_nsec; int shift; } ;
struct timekeeper {TYPE_1__ tkr_mono; int xtime_sec; } ;



__attribute__((used)) static void tk_set_xtime(struct timekeeper *tk, const struct timespec64 *ts)
{
 tk->xtime_sec = ts->tv_sec;
 tk->tkr_mono.xtime_nsec = (u64)ts->tv_nsec << tk->tkr_mono.shift;
}

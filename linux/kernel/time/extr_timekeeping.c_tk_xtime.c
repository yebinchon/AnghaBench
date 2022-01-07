
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {long tv_nsec; int tv_sec; } ;
struct TYPE_2__ {int xtime_nsec; int shift; } ;
struct timekeeper {TYPE_1__ tkr_mono; int xtime_sec; } ;



__attribute__((used)) static inline struct timespec64 tk_xtime(const struct timekeeper *tk)
{
 struct timespec64 ts;

 ts.tv_sec = tk->xtime_sec;
 ts.tv_nsec = (long)(tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift);
 return ts;
}

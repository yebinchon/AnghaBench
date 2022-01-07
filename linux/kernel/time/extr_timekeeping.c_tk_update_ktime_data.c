
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_5__ {void* base; } ;
struct TYPE_4__ {int xtime_nsec; int shift; void* base; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct timekeeper {int ktime_sec; int raw_sec; TYPE_2__ tkr_raw; TYPE_1__ tkr_mono; TYPE_3__ wall_to_monotonic; scalar_t__ xtime_sec; } ;


 int NSEC_PER_SEC ;
 void* ns_to_ktime (int) ;

__attribute__((used)) static inline void tk_update_ktime_data(struct timekeeper *tk)
{
 u64 seconds;
 u32 nsec;
 seconds = (u64)(tk->xtime_sec + tk->wall_to_monotonic.tv_sec);
 nsec = (u32) tk->wall_to_monotonic.tv_nsec;
 tk->tkr_mono.base = ns_to_ktime(seconds * NSEC_PER_SEC + nsec);






 nsec += (u32)(tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift);
 if (nsec >= NSEC_PER_SEC)
  seconds++;
 tk->ktime_sec = seconds;


 tk->tkr_raw.base = ns_to_ktime(tk->raw_sec * NSEC_PER_SEC);
}

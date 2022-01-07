
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct timespec64 {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct timekeeper {struct timespec64 wall_to_monotonic; int tkr_mono; scalar_t__ xtime_sec; } ;
struct TYPE_2__ {int seq; struct timekeeper timekeeper; } ;


 int WARN_ON (int ) ;
 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 scalar_t__ timekeeping_get_ns (int *) ;
 int timekeeping_suspended ;
 int timespec64_add_ns (struct timespec64*,scalar_t__) ;
 TYPE_1__ tk_core ;

void ktime_get_ts64(struct timespec64 *ts)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 struct timespec64 tomono;
 unsigned int seq;
 u64 nsec;

 WARN_ON(timekeeping_suspended);

 do {
  seq = read_seqcount_begin(&tk_core.seq);
  ts->tv_sec = tk->xtime_sec;
  nsec = timekeeping_get_ns(&tk->tkr_mono);
  tomono = tk->wall_to_monotonic;

 } while (read_seqcount_retry(&tk_core.seq, seq));

 ts->tv_sec += tomono.tv_sec;
 ts->tv_nsec = 0;
 timespec64_add_ns(ts, nsec + tomono.tv_nsec);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct timekeeper {struct timespec64 wall_to_monotonic; } ;
struct TYPE_2__ {int seq; struct timekeeper timekeeper; } ;


 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 int set_normalized_timespec64 (struct timespec64*,scalar_t__,scalar_t__) ;
 TYPE_1__ tk_core ;
 struct timespec64 tk_xtime (struct timekeeper*) ;

void ktime_get_coarse_ts64(struct timespec64 *ts)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 struct timespec64 now, mono;
 unsigned int seq;

 do {
  seq = read_seqcount_begin(&tk_core.seq);

  now = tk_xtime(tk);
  mono = tk->wall_to_monotonic;
 } while (read_seqcount_retry(&tk_core.seq, seq));

 set_normalized_timespec64(ts, now.tv_sec + mono.tv_sec,
    now.tv_nsec + mono.tv_nsec);
}

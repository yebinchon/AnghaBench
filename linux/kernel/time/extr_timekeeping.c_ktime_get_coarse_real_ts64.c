
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {int dummy; } ;
struct timekeeper {int dummy; } ;
struct TYPE_2__ {int seq; struct timekeeper timekeeper; } ;


 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 TYPE_1__ tk_core ;
 struct timespec64 tk_xtime (struct timekeeper*) ;

void ktime_get_coarse_real_ts64(struct timespec64 *ts)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 unsigned int seq;

 do {
  seq = read_seqcount_begin(&tk_core.seq);

  *ts = tk_xtime(tk);
 } while (read_seqcount_retry(&tk_core.seq, seq));
}

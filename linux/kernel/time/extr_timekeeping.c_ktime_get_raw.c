
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int base; } ;
struct timekeeper {TYPE_2__ tkr_raw; } ;
typedef int ktime_t ;
struct TYPE_3__ {int seq; struct timekeeper timekeeper; } ;


 int ktime_add_ns (int ,int ) ;
 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 int timekeeping_get_ns (TYPE_2__*) ;
 TYPE_1__ tk_core ;

ktime_t ktime_get_raw(void)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 unsigned int seq;
 ktime_t base;
 u64 nsecs;

 do {
  seq = read_seqcount_begin(&tk_core.seq);
  base = tk->tkr_raw.base;
  nsecs = timekeeping_get_ns(&tk->tkr_raw);

 } while (read_seqcount_retry(&tk_core.seq, seq));

 return ktime_add_ns(base, nsecs);
}

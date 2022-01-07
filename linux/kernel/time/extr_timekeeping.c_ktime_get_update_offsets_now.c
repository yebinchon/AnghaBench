
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {scalar_t__ base; } ;
struct timekeeper {unsigned int clock_was_set_seq; scalar_t__ offs_real; scalar_t__ offs_boot; scalar_t__ offs_tai; scalar_t__ next_leap_ktime; TYPE_2__ tkr_mono; } ;
typedef scalar_t__ ktime_t ;
struct TYPE_3__ {int seq; struct timekeeper timekeeper; } ;


 scalar_t__ ktime_add_ns (scalar_t__,int ) ;
 int ktime_set (int,int ) ;
 scalar_t__ ktime_sub (scalar_t__,int ) ;
 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 int timekeeping_get_ns (TYPE_2__*) ;
 TYPE_1__ tk_core ;
 scalar_t__ unlikely (int) ;

ktime_t ktime_get_update_offsets_now(unsigned int *cwsseq, ktime_t *offs_real,
         ktime_t *offs_boot, ktime_t *offs_tai)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 unsigned int seq;
 ktime_t base;
 u64 nsecs;

 do {
  seq = read_seqcount_begin(&tk_core.seq);

  base = tk->tkr_mono.base;
  nsecs = timekeeping_get_ns(&tk->tkr_mono);
  base = ktime_add_ns(base, nsecs);

  if (*cwsseq != tk->clock_was_set_seq) {
   *cwsseq = tk->clock_was_set_seq;
   *offs_real = tk->offs_real;
   *offs_boot = tk->offs_boot;
   *offs_tai = tk->offs_tai;
  }


  if (unlikely(base >= tk->next_leap_ktime))
   *offs_real = ktime_sub(tk->offs_real, ktime_set(1, 0));

 } while (read_seqcount_retry(&tk_core.seq, seq));

 return base;
}

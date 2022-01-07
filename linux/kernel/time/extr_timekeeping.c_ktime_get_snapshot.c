
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int base; } ;
struct timekeeper {TYPE_2__ tkr_raw; TYPE_2__ tkr_mono; int offs_real; int clock_was_set_seq; int cs_was_changed_seq; } ;
struct system_time_snapshot {void* raw; void* real; int cycles; int clock_was_set_seq; int cs_was_changed_seq; } ;
typedef int ktime_t ;
struct TYPE_4__ {struct timekeeper timekeeper; int seq; } ;


 int WARN_ON_ONCE (int ) ;
 int ktime_add (int ,int ) ;
 void* ktime_add_ns (int ,int ) ;
 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 int timekeeping_cycles_to_ns (TYPE_2__*,int ) ;
 int timekeeping_suspended ;
 int tk_clock_read (TYPE_2__*) ;
 TYPE_1__ tk_core ;

void ktime_get_snapshot(struct system_time_snapshot *systime_snapshot)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 unsigned int seq;
 ktime_t base_raw;
 ktime_t base_real;
 u64 nsec_raw;
 u64 nsec_real;
 u64 now;

 WARN_ON_ONCE(timekeeping_suspended);

 do {
  seq = read_seqcount_begin(&tk_core.seq);
  now = tk_clock_read(&tk->tkr_mono);
  systime_snapshot->cs_was_changed_seq = tk->cs_was_changed_seq;
  systime_snapshot->clock_was_set_seq = tk->clock_was_set_seq;
  base_real = ktime_add(tk->tkr_mono.base,
          tk_core.timekeeper.offs_real);
  base_raw = tk->tkr_raw.base;
  nsec_real = timekeeping_cycles_to_ns(&tk->tkr_mono, now);
  nsec_raw = timekeeping_cycles_to_ns(&tk->tkr_raw, now);
 } while (read_seqcount_retry(&tk_core.seq, seq));

 systime_snapshot->cycles = now;
 systime_snapshot->real = ktime_add_ns(base_real, nsec_real);
 systime_snapshot->raw = ktime_add_ns(base_raw, nsec_raw);
}

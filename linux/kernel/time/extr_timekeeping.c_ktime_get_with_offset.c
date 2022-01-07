
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int base; } ;
struct timekeeper {TYPE_2__ tkr_mono; } ;
typedef int ktime_t ;
typedef enum tk_offsets { ____Placeholder_tk_offsets } tk_offsets ;
struct TYPE_3__ {int seq; struct timekeeper timekeeper; } ;


 int WARN_ON (int ) ;
 int ktime_add (int ,int ) ;
 int ktime_add_ns (int ,int ) ;
 int ** offsets ;
 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 int timekeeping_get_ns (TYPE_2__*) ;
 int timekeeping_suspended ;
 TYPE_1__ tk_core ;

ktime_t ktime_get_with_offset(enum tk_offsets offs)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 unsigned int seq;
 ktime_t base, *offset = offsets[offs];
 u64 nsecs;

 WARN_ON(timekeeping_suspended);

 do {
  seq = read_seqcount_begin(&tk_core.seq);
  base = ktime_add(tk->tkr_mono.base, *offset);
  nsecs = timekeeping_get_ns(&tk->tkr_mono);

 } while (read_seqcount_retry(&tk_core.seq, seq));

 return ktime_add_ns(base, nsecs);

}

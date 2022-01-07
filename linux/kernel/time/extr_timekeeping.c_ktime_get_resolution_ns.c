
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int mult; int shift; } ;
struct timekeeper {TYPE_1__ tkr_mono; } ;
struct TYPE_4__ {int seq; struct timekeeper timekeeper; } ;


 int WARN_ON (int ) ;
 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 int timekeeping_suspended ;
 TYPE_2__ tk_core ;

u32 ktime_get_resolution_ns(void)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 unsigned int seq;
 u32 nsecs;

 WARN_ON(timekeeping_suspended);

 do {
  seq = read_seqcount_begin(&tk_core.seq);
  nsecs = tk->tkr_mono.mult >> tk->tkr_mono.shift;
 } while (read_seqcount_retry(&tk_core.seq, seq));

 return nsecs;
}

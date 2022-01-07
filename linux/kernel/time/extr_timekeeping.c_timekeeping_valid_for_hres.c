
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* clock; } ;
struct timekeeper {TYPE_2__ tkr_mono; } ;
struct TYPE_6__ {int seq; struct timekeeper timekeeper; } ;
struct TYPE_4__ {int flags; } ;


 int CLOCK_SOURCE_VALID_FOR_HRES ;
 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 TYPE_3__ tk_core ;

int timekeeping_valid_for_hres(void)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 unsigned int seq;
 int ret;

 do {
  seq = read_seqcount_begin(&tk_core.seq);

  ret = tk->tkr_mono.clock->flags & CLOCK_SOURCE_VALID_FOR_HRES;

 } while (read_seqcount_retry(&tk_core.seq, seq));

 return ret;
}

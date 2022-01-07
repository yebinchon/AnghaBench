
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time64_t ;
struct timekeeper {int xtime_sec; } ;
struct TYPE_2__ {int seq; struct timekeeper timekeeper; } ;


 int CONFIG_64BIT ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 TYPE_1__ tk_core ;

time64_t ktime_get_real_seconds(void)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 time64_t seconds;
 unsigned int seq;

 if (IS_ENABLED(CONFIG_64BIT))
  return tk->xtime_sec;

 do {
  seq = read_seqcount_begin(&tk_core.seq);
  seconds = tk->xtime_sec;

 } while (read_seqcount_retry(&tk_core.seq, seq));

 return seconds;
}

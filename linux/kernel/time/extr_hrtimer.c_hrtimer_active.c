
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer_clock_base {struct hrtimer const* running; int seq; } ;
struct hrtimer {scalar_t__ state; int base; } ;


 scalar_t__ HRTIMER_STATE_INACTIVE ;
 struct hrtimer_clock_base* READ_ONCE (int ) ;
 unsigned int raw_read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;

bool hrtimer_active(const struct hrtimer *timer)
{
 struct hrtimer_clock_base *base;
 unsigned int seq;

 do {
  base = READ_ONCE(timer->base);
  seq = raw_read_seqcount_begin(&base->seq);

  if (timer->state != HRTIMER_STATE_INACTIVE ||
      base->running == timer)
   return 1;

 } while (read_seqcount_retry(&base->seq, seq) ||
   base != READ_ONCE(timer->base));

 return 0;
}

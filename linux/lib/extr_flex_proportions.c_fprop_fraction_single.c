
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fprop_local_single {long events; } ;
struct fprop_global {int events; int sequence; } ;
typedef long s64 ;


 int fprop_reflect_period_single (struct fprop_global*,struct fprop_local_single*) ;
 long percpu_counter_read_positive (int *) ;
 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;

void fprop_fraction_single(struct fprop_global *p,
      struct fprop_local_single *pl,
      unsigned long *numerator, unsigned long *denominator)
{
 unsigned int seq;
 s64 num, den;

 do {
  seq = read_seqcount_begin(&p->sequence);
  fprop_reflect_period_single(p, pl);
  num = pl->events;
  den = percpu_counter_read_positive(&p->events);
 } while (read_seqcount_retry(&p->sequence, seq));





 if (den <= num) {
  if (num)
   den = num;
  else
   den = 1;
 }
 *denominator = den;
 *numerator = num;
}

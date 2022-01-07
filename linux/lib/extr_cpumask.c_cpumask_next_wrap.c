
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int cpumask_next (int,struct cpumask const*) ;
 int nr_cpumask_bits ;

int cpumask_next_wrap(int n, const struct cpumask *mask, int start, bool wrap)
{
 int next;

again:
 next = cpumask_next(n, mask);

 if (wrap && n < start && next >= start) {
  return nr_cpumask_bits;

 } else if (next >= nr_cpumask_bits) {
  wrap = 1;
  n = -1;
  goto again;
 }

 return next;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer_cpu_base {struct hrtimer_clock_base* clock_base; } ;
struct hrtimer_clock_base {int dummy; } ;


 unsigned int __ffs (unsigned int) ;

__attribute__((used)) static struct hrtimer_clock_base *
__next_base(struct hrtimer_cpu_base *cpu_base, unsigned int *active)
{
 unsigned int idx;

 if (!*active)
  return ((void*)0);

 idx = __ffs(*active);
 *active &= ~(1U << idx);

 return &cpu_base->clock_base[idx];
}

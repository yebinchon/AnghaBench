
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int max_cycles; int mask; int maxadj; int shift; int mult; int max_idle_ns; } ;


 int clocks_calc_max_nsecs (int ,int ,int ,int ,int *) ;

__attribute__((used)) static inline void clocksource_update_max_deferment(struct clocksource *cs)
{
 cs->max_idle_ns = clocks_calc_max_nsecs(cs->mult, cs->shift,
      cs->maxadj, cs->mask,
      &cs->max_cycles);
}

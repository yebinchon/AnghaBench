
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct timecounter {int cycle_last; int nsec; int frac; int mask; TYPE_1__* cc; } ;
struct TYPE_3__ {int mask; } ;


 scalar_t__ cc_cyc2ns_backwards (TYPE_1__*,int,int ,int) ;
 scalar_t__ cyclecounter_cyc2ns (TYPE_1__*,int,int ,int*) ;

u64 timecounter_cyc2time(struct timecounter *tc,
    u64 cycle_tstamp)
{
 u64 delta = (cycle_tstamp - tc->cycle_last) & tc->cc->mask;
 u64 nsec = tc->nsec, frac = tc->frac;






 if (delta > tc->cc->mask / 2) {
  delta = (tc->cycle_last - cycle_tstamp) & tc->cc->mask;
  nsec -= cc_cyc2ns_backwards(tc->cc, delta, tc->mask, frac);
 } else {
  nsec += cyclecounter_cyc2ns(tc->cc, delta, tc->mask, &frac);
 }

 return nsec;
}

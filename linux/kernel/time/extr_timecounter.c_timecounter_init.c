
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timecounter {unsigned long long mask; scalar_t__ frac; int nsec; int cycle_last; struct cyclecounter const* cc; } ;
struct cyclecounter {unsigned long long shift; int (* read ) (struct cyclecounter const*) ;} ;


 int stub1 (struct cyclecounter const*) ;

void timecounter_init(struct timecounter *tc,
        const struct cyclecounter *cc,
        u64 start_tstamp)
{
 tc->cc = cc;
 tc->cycle_last = cc->read(cc);
 tc->nsec = start_tstamp;
 tc->mask = (1ULL << cc->shift) - 1;
 tc->frac = 0;
}

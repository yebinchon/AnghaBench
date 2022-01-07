
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct timecounter {int cycle_last; int frac; int mask; TYPE_1__* cc; } ;
struct TYPE_3__ {int (* read ) (TYPE_1__*) ;int mask; } ;


 int cyclecounter_cyc2ns (TYPE_1__*,int,int ,int *) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static u64 timecounter_read_delta(struct timecounter *tc)
{
 u64 cycle_now, cycle_delta;
 u64 ns_offset;


 cycle_now = tc->cc->read(tc->cc);


 cycle_delta = (cycle_now - tc->cycle_last) & tc->cc->mask;


 ns_offset = cyclecounter_cyc2ns(tc->cc, cycle_delta,
     tc->mask, &tc->frac);


 tc->cycle_last = cycle_now;

 return ns_offset;
}

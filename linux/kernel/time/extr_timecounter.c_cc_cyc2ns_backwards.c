
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cyclecounter {int mult; int shift; } ;



__attribute__((used)) static u64 cc_cyc2ns_backwards(const struct cyclecounter *cc,
          u64 cycles, u64 mask, u64 frac)
{
 u64 ns = (u64) cycles;

 ns = ((ns * cc->mult) - frac) >> cc->shift;

 return ns;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int time_mult; int time_shift; } ;
struct intel_pt {TYPE_1__ tc; } ;



__attribute__((used)) static u64 intel_pt_ns_to_ticks(const struct intel_pt *pt, u64 ns)
{
 u64 quot, rem;

 quot = ns / pt->tc.time_mult;
 rem = ns % pt->tc.time_mult;
 return (quot << pt->tc.time_shift) + (rem << pt->tc.time_shift) /
  pt->tc.time_mult;
}

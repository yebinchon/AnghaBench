
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct clock_event_device {unsigned long long shift; int mult; } ;


 scalar_t__ WARN_ON (int) ;
 int do_div (unsigned long long,unsigned long long) ;

__attribute__((used)) static u64 cev_delta2ns(unsigned long latch, struct clock_event_device *evt,
   bool ismax)
{
 u64 clc = (u64) latch << evt->shift;
 u64 rnd;

 if (WARN_ON(!evt->mult))
  evt->mult = 1;
 rnd = (u64) evt->mult - 1;





 if ((clc >> evt->shift) != (u64)latch)
  clc = ~0ULL;
 if ((~0ULL - clc > rnd) &&
     (!ismax || evt->mult <= (1ULL << evt->shift)))
  clc += rnd;

 do_div(clc, evt->mult);


 return clc > 1000 ? clc : 1000;
}

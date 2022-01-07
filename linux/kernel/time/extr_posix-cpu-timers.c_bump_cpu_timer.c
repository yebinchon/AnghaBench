
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct TYPE_5__ {TYPE_1__ node; } ;
struct TYPE_6__ {TYPE_2__ cpu; } ;
struct k_itimer {scalar_t__ it_interval; long long it_overrun; TYPE_3__ it; } ;



__attribute__((used)) static u64 bump_cpu_timer(struct k_itimer *timer, u64 now)
{
 u64 delta, incr, expires = timer->it.cpu.node.expires;
 int i;

 if (!timer->it_interval)
  return expires;

 if (now < expires)
  return expires;

 incr = timer->it_interval;
 delta = now + incr - expires;


 for (i = 0; incr < delta - incr; i++)
  incr = incr << 1;

 for (; i >= 0; incr >>= 1, i--) {
  if (delta < incr)
   continue;

  timer->it.cpu.node.expires += incr;
  timer->it_overrun += 1LL << i;
  delta -= incr;
 }
 return timer->it.cpu.node.expires;
}

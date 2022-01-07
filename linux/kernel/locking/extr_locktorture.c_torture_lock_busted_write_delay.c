
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct torture_random_state {int dummy; } ;
struct TYPE_2__ {int nrealwriters_stress; } ;


 TYPE_1__ cxt ;
 int mdelay (unsigned long const) ;
 int torture_preempt_schedule () ;
 int torture_random (struct torture_random_state*) ;

__attribute__((used)) static void torture_lock_busted_write_delay(struct torture_random_state *trsp)
{
 const unsigned long longdelay_ms = 100;


 if (!(torture_random(trsp) %
       (cxt.nrealwriters_stress * 2000 * longdelay_ms)))
  mdelay(longdelay_ms);
 if (!(torture_random(trsp) % (cxt.nrealwriters_stress * 20000)))
  torture_preempt_schedule();
}

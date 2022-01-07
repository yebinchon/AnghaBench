
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FULLSTOP_DONTSTOP ;
 scalar_t__ READ_ONCE (int ) ;
 int fullstop ;

bool torture_must_stop_irq(void)
{
 return READ_ONCE(fullstop) != FULLSTOP_DONTSTOP;
}

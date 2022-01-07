
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_ecu {int ac_timer; } ;


 scalar_t__ hrtimer_cancel (int *) ;
 int j1939_ecu_put (struct j1939_ecu*) ;

void j1939_ecu_timer_cancel(struct j1939_ecu *ecu)
{
 if (hrtimer_cancel(&ecu->ac_timer))
  j1939_ecu_put(ecu);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_ecu {int ac_timer; } ;


 int HRTIMER_MODE_REL_SOFT ;
 int hrtimer_start (int *,int ,int ) ;
 int j1939_ecu_get (struct j1939_ecu*) ;
 int ms_to_ktime (int) ;

void j1939_ecu_timer_start(struct j1939_ecu *ecu)
{



 j1939_ecu_get(ecu);


 hrtimer_start(&ecu->ac_timer, ms_to_ktime(250),
        HRTIMER_MODE_REL_SOFT);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int function; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_ABS_HARD ;
 int bc_handler ;
 TYPE_1__ bctimer ;
 int ce_broadcast_hrtimer ;
 int clockevents_register_device (int *) ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;

void tick_setup_hrtimer_broadcast(void)
{
 hrtimer_init(&bctimer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS_HARD);
 bctimer.function = bc_handler;
 clockevents_register_device(&ce_broadcast_hrtimer);
}

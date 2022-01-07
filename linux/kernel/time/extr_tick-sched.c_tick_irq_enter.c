
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tick_check_oneshot_broadcast_this_cpu () ;
 int tick_nohz_irq_enter () ;

void tick_irq_enter(void)
{
 tick_check_oneshot_broadcast_this_cpu();
 tick_nohz_irq_enter();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;


 scalar_t__ TICKDEV_MODE_ONESHOT ;
 int cpumask_test_cpu (int ,int ) ;
 int smp_processor_id () ;
 TYPE_1__ tick_broadcast_device ;
 int tick_broadcast_mask ;

bool tick_resume_check_broadcast(void)
{
 if (tick_broadcast_device.mode == TICKDEV_MODE_ONESHOT)
  return 0;
 else
  return cpumask_test_cpu(smp_processor_id(), tick_broadcast_mask);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {scalar_t__ irq; int cpumask; } ;


 scalar_t__ cpumask_equal (int ,int ) ;
 int cpumask_of (int) ;
 int cpumask_test_cpu (int,int ) ;
 int irq_can_set_affinity (scalar_t__) ;

__attribute__((used)) static bool tick_check_percpu(struct clock_event_device *curdev,
         struct clock_event_device *newdev, int cpu)
{
 if (!cpumask_test_cpu(cpu, newdev->cpumask))
  return 0;
 if (cpumask_equal(newdev->cpumask, cpumask_of(cpu)))
  return 1;

 if (newdev->irq >= 0 && !irq_can_set_affinity(newdev->irq))
  return 0;

 if (curdev && cpumask_equal(curdev->cpumask, cpumask_of(cpu)))
  return 0;
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kthread_should_stop () ;
 scalar_t__ torture_must_stop_irq () ;

bool torture_must_stop(void)
{
 return torture_must_stop_irq() || kthread_should_stop();
}

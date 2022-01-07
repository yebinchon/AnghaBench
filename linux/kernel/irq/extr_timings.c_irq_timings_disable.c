
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int irq_timing_enabled ;
 int static_branch_disable (int *) ;

void irq_timings_disable(void)
{
 static_branch_disable(&irq_timing_enabled);
}

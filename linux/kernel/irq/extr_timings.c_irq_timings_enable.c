
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int irq_timing_enabled ;
 int static_branch_enable (int *) ;

void irq_timings_enable(void)
{
 static_branch_enable(&irq_timing_enabled);
}

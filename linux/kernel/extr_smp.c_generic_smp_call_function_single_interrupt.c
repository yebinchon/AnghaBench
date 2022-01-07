
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_smp_call_function_queue (int) ;

void generic_smp_call_function_single_interrupt(void)
{
 flush_smp_call_function_queue(1);
}

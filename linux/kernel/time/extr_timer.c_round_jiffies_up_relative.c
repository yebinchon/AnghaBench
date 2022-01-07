
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __round_jiffies_up_relative (unsigned long,int ) ;
 int raw_smp_processor_id () ;

unsigned long round_jiffies_up_relative(unsigned long j)
{
 return __round_jiffies_up_relative(j, raw_smp_processor_id());
}

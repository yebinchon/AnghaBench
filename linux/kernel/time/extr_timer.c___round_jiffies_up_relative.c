
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long jiffies ;
 unsigned long round_jiffies_common (unsigned long,int,int) ;

unsigned long __round_jiffies_up_relative(unsigned long j, int cpu)
{
 unsigned long j0 = jiffies;


 return round_jiffies_common(j + j0, cpu, 1) - j0;
}

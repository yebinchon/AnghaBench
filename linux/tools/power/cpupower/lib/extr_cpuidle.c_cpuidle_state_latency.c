
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDLESTATE_LATENCY ;
 unsigned long cpuidle_state_get_one_value (unsigned int,unsigned int,int ) ;

unsigned long cpuidle_state_latency(unsigned int cpu,
       unsigned int idlestate)
{
 return cpuidle_state_get_one_value(cpu, idlestate, IDLESTATE_LATENCY);
}

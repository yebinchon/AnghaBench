
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t IDLESTATE_DISABLE ;
 unsigned int cpuidle_state_count (unsigned int) ;
 int cpuidle_state_file_exists (unsigned int,unsigned int,int ) ;
 int cpuidle_state_get_one_value (unsigned int,unsigned int,size_t) ;
 int * idlestate_value_files ;

int cpuidle_is_state_disabled(unsigned int cpu,
    unsigned int idlestate)
{
 if (cpuidle_state_count(cpu) <= idlestate)
  return -1;

 if (!cpuidle_state_file_exists(cpu, idlestate,
     idlestate_value_files[IDLESTATE_DISABLE]))
  return -2;
 return cpuidle_state_get_one_value(cpu, idlestate, IDLESTATE_DISABLE);
}

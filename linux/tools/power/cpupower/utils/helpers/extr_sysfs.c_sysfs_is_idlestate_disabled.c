
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t IDLESTATE_DISABLE ;
 int * idlestate_value_files ;
 unsigned int sysfs_get_idlestate_count (unsigned int) ;
 int sysfs_idlestate_file_exists (unsigned int,unsigned int,int ) ;
 int sysfs_idlestate_get_one_value (unsigned int,unsigned int,size_t) ;

int sysfs_is_idlestate_disabled(unsigned int cpu,
    unsigned int idlestate)
{
 if (sysfs_get_idlestate_count(cpu) <= idlestate)
  return -1;

 if (!sysfs_idlestate_file_exists(cpu, idlestate,
     idlestate_value_files[IDLESTATE_DISABLE]))
  return -2;
 return sysfs_idlestate_get_one_value(cpu, idlestate, IDLESTATE_DISABLE);
}

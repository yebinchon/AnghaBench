
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDLESTATE_USAGE ;
 unsigned long sysfs_idlestate_get_one_value (unsigned int,unsigned int,int ) ;

unsigned long sysfs_get_idlestate_usage(unsigned int cpu,
     unsigned int idlestate)
{
 return sysfs_idlestate_get_one_value(cpu, idlestate, IDLESTATE_USAGE);
}

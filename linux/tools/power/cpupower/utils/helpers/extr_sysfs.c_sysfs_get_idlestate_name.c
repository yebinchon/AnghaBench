
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDLESTATE_NAME ;
 char* sysfs_idlestate_get_one_string (unsigned int,unsigned int,int ) ;

char *sysfs_get_idlestate_name(unsigned int cpu, unsigned int idlestate)
{
 return sysfs_idlestate_get_one_string(cpu, idlestate, IDLESTATE_NAME);
}

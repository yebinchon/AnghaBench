
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUIDLE_DRIVER ;
 char* sysfs_cpuidle_get_one_string (int ) ;

char *sysfs_get_cpuidle_driver(void)
{
 return sysfs_cpuidle_get_one_string(CPUIDLE_DRIVER);
}

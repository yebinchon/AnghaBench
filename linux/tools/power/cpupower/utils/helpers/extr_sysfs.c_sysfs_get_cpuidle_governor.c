
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUIDLE_GOVERNOR ;
 int CPUIDLE_GOVERNOR_RO ;
 char* sysfs_cpuidle_get_one_string (int ) ;

char *sysfs_get_cpuidle_governor(void)
{
 char *tmp = sysfs_cpuidle_get_one_string(CPUIDLE_GOVERNOR_RO);
 if (!tmp)
  return sysfs_cpuidle_get_one_string(CPUIDLE_GOVERNOR);
 else
  return tmp;
}

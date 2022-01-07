
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int closedir (int *) ;
 int * opendir (char*) ;

int cpufreq_sysfs_present(void)
{
 DIR *dir;

 dir = opendir("/sys/devices/system/cpu/cpu0/cpufreq");
 if (dir) {
  closedir(dir);
  return 1;
 }

 return 0;
}

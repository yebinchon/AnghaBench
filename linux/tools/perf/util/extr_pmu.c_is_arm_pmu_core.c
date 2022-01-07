
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int PATH_MAX ;
 int scnprintf (char*,int,char*,char const*,char const*) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* sysfs__mountpoint () ;

__attribute__((used)) static int is_arm_pmu_core(const char *name)
{
 struct stat st;
 char path[PATH_MAX];
 const char *sysfs = sysfs__mountpoint();

 if (!sysfs)
  return 0;


 scnprintf(path, PATH_MAX, "%s/bus/event_source/devices/%s/cpus",
    sysfs, name);
 if (stat(path, &st) == 0)
  return 1;

 return 0;
}

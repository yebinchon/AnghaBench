
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int PATH_MAX ;
 int pr_debug (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int stat (char*,struct stat*) ;
 char* sysfs__mountpoint () ;

__attribute__((used)) static int test_pmu(void)
{
 struct stat st;
 char path[PATH_MAX];
 int ret;

 snprintf(path, PATH_MAX, "%s/bus/event_source/devices/cpu/format/",
   sysfs__mountpoint());

 ret = stat(path, &st);
 if (ret)
  pr_debug("omitting PMU cpu tests\n");
 return !ret;
}

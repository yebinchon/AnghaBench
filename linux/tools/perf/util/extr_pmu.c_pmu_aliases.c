
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct list_head {int dummy; } ;


 int PATH_MAX ;
 scalar_t__ pmu_aliases_parse (char*,struct list_head*) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* sysfs__mountpoint () ;

__attribute__((used)) static int pmu_aliases(const char *name, struct list_head *head)
{
 struct stat st;
 char path[PATH_MAX];
 const char *sysfs = sysfs__mountpoint();

 if (!sysfs)
  return -1;

 snprintf(path, PATH_MAX,
   "%s/bus/event_source/devices/%s/events", sysfs, name);

 if (stat(path, &st) < 0)
  return 0;

 if (pmu_aliases_parse(path, head))
  return -1;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int snprintf (char*,int,char*,int,char const*) ;
 int sysfs__read_int (char*,int*) ;

__attribute__((used)) static int cpu__get_topology_int(int cpu, const char *name, int *value)
{
 char path[PATH_MAX];

 snprintf(path, PATH_MAX,
  "devices/system/cpu/cpu%d/topology/%s", cpu, name);

 return sysfs__read_int(path, value);
}

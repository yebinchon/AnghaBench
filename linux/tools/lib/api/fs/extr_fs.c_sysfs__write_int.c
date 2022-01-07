
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int PATH_MAX ;
 int filename__write_int (char*,int) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 char* sysfs__mountpoint () ;

int sysfs__write_int(const char *entry, int value)
{
 char path[PATH_MAX];
 const char *sysfs = sysfs__mountpoint();

 if (!sysfs)
  return -1;

 if (snprintf(path, sizeof(path), "%s/%s", sysfs, entry) >= PATH_MAX)
  return -1;

 return filename__write_int(path, value);
}

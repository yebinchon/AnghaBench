
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int PATH_MAX ;
 int filename__read_int (char*,int*) ;
 char* procfs__mountpoint () ;
 int snprintf (char*,int,char*,char const*,char const*) ;

int sysctl__read_int(const char *sysctl, int *value)
{
 char path[PATH_MAX];
 const char *procfs = procfs__mountpoint();

 if (!procfs)
  return -1;

 snprintf(path, sizeof(path), "%s/sys/%s", procfs, sysctl);

 return filename__read_int(path, value);
}

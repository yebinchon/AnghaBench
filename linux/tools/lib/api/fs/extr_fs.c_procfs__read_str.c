
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int PATH_MAX ;
 int filename__read_str (char*,char**,size_t*) ;
 char* procfs__mountpoint () ;
 int snprintf (char*,int,char*,char const*,char const*) ;

int procfs__read_str(const char *entry, char **buf, size_t *sizep)
{
 char path[PATH_MAX];
 const char *procfs = procfs__mountpoint();

 if (!procfs)
  return -1;

 snprintf(path, sizeof(path), "%s/%s", procfs, entry);

 return filename__read_str(path, buf, sizep);
}

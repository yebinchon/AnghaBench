
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int PATH_MAX ;
 int filename__read_ull_base (char*,unsigned long long*,int) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 char* sysfs__mountpoint () ;

__attribute__((used)) static int sysfs__read_ull_base(const char *entry,
    unsigned long long *value, int base)
{
 char path[PATH_MAX];
 const char *sysfs = sysfs__mountpoint();

 if (!sysfs)
  return -1;

 snprintf(path, sizeof(path), "%s/%s", sysfs, entry);

 return filename__read_ull_base(path, value, base);
}

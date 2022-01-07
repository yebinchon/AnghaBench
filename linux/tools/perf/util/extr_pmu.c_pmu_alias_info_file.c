
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static inline bool pmu_alias_info_file(char *name)
{
 size_t len;

 len = strlen(name);
 if (len > 5 && !strcmp(name + len - 5, ".unit"))
  return 1;
 if (len > 6 && !strcmp(name + len - 6, ".scale"))
  return 1;
 if (len > 8 && !strcmp(name + len - 8, ".per-pkg"))
  return 1;
 if (len > 9 && !strcmp(name + len - 9, ".snapshot"))
  return 1;

 return 0;
}

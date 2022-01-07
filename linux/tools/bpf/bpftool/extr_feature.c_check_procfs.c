
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {scalar_t__ f_type; } ;


 unsigned long PROC_SUPER_MAGIC ;
 scalar_t__ statfs (char*,struct statfs*) ;

__attribute__((used)) static bool check_procfs(void)
{
 struct statfs st_fs;

 if (statfs("/proc", &st_fs) < 0)
  return 0;
 if ((unsigned long)st_fs.f_type != PROC_SUPER_MAGIC)
  return 0;

 return 1;
}

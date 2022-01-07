
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct FTW {int dummy; } ;


 int FTW_D ;
 int log_err (char*,char const*) ;
 scalar_t__ rmdir (char const*) ;

__attribute__((used)) static int nftwfunc(const char *filename, const struct stat *statptr,
      int fileflags, struct FTW *pfwt)
{
 if ((fileflags & FTW_D) && rmdir(filename))
  log_err("Removing cgroup: %s", filename);
 return 0;
}

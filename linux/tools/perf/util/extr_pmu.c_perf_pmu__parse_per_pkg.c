
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu_alias {int per_pkg; } ;


 int O_RDONLY ;
 int PATH_MAX ;
 int close (int) ;
 int open (char*,int ) ;
 int scnprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static int
perf_pmu__parse_per_pkg(struct perf_pmu_alias *alias, char *dir, char *name)
{
 char path[PATH_MAX];
 int fd;

 scnprintf(path, PATH_MAX, "%s/%s.per-pkg", dir, name);

 fd = open(path, O_RDONLY);
 if (fd == -1)
  return -1;

 close(fd);

 alias->per_pkg = 1;
 return 0;
}

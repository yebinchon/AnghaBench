
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu_alias {int snapshot; } ;


 int O_RDONLY ;
 int PATH_MAX ;
 int close (int) ;
 int open (char*,int ) ;
 int scnprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static int perf_pmu__parse_snapshot(struct perf_pmu_alias *alias,
        char *dir, char *name)
{
 char path[PATH_MAX];
 int fd;

 scnprintf(path, PATH_MAX, "%s/%s.snapshot", dir, name);

 fd = open(path, O_RDONLY);
 if (fd == -1)
  return -1;

 alias->snapshot = 1;
 close(fd);
 return 0;
}

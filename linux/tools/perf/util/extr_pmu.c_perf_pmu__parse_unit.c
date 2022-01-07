
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu_alias {char* unit; } ;
typedef int ssize_t ;


 int O_RDONLY ;
 int PATH_MAX ;
 int UNIT_MAX_LEN ;
 int close (int) ;
 int open (char*,int ) ;
 int read (int,char*,int ) ;
 int scnprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static int perf_pmu__parse_unit(struct perf_pmu_alias *alias, char *dir, char *name)
{
 char path[PATH_MAX];
 ssize_t sret;
 int fd;

 scnprintf(path, PATH_MAX, "%s/%s.unit", dir, name);

 fd = open(path, O_RDONLY);
 if (fd == -1)
  return -1;

 sret = read(fd, alias->unit, UNIT_MAX_LEN);
 if (sret < 0)
  goto error;

 close(fd);

 if (alias->unit[sret - 1] == '\n')
  alias->unit[sret - 1] = '\0';
 else
  alias->unit[sret] = '\0';

 return 0;
error:
 close(fd);
 alias->unit[0] = '\0';
 return -1;
}

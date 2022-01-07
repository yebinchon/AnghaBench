
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct perf_pmu_alias {int scale; } ;
typedef int ssize_t ;
typedef int scale ;


 int O_RDONLY ;
 int PATH_MAX ;
 int close (int) ;
 scalar_t__ fstat (int,struct stat*) ;
 int open (char*,int ) ;
 int perf_pmu__convert_scale (char*,int *,int *) ;
 int read (int,char*,int) ;
 int scnprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static int perf_pmu__parse_scale(struct perf_pmu_alias *alias, char *dir, char *name)
{
 struct stat st;
 ssize_t sret;
 char scale[128];
 int fd, ret = -1;
 char path[PATH_MAX];

 scnprintf(path, PATH_MAX, "%s/%s.scale", dir, name);

 fd = open(path, O_RDONLY);
 if (fd == -1)
  return -1;

 if (fstat(fd, &st) < 0)
  goto error;

 sret = read(fd, scale, sizeof(scale)-1);
 if (sret < 0)
  goto error;

 if (scale[sret - 1] == '\n')
  scale[sret - 1] = '\0';
 else
  scale[sret] = '\0';

 ret = perf_pmu__convert_scale(scale, ((void*)0), &alias->scale);
error:
 close(fd);
 return ret;
}

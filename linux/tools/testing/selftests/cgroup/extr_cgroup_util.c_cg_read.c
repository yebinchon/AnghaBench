
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int PATH_MAX ;
 scalar_t__ read_text (char*,char*,size_t) ;
 int snprintf (char*,int,char*,char const*,char const*) ;

int cg_read(const char *cgroup, const char *control, char *buf, size_t len)
{
 char path[PATH_MAX];

 snprintf(path, sizeof(path), "%s/%s", cgroup, control);

 if (read_text(path, buf, len) >= 0)
  return 0;

 return -1;
}

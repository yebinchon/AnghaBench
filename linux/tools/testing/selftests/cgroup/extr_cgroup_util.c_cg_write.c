
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int path ;


 int PATH_MAX ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ write_text (char*,char*,scalar_t__) ;

int cg_write(const char *cgroup, const char *control, char *buf)
{
 char path[PATH_MAX];
 ssize_t len = strlen(buf);

 snprintf(path, sizeof(path), "%s/%s", cgroup, control);

 if (write_text(path, buf, len) == len)
  return 0;

 return -1;
}

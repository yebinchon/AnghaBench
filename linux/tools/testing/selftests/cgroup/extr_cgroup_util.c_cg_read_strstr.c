
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int PAGE_SIZE ;
 scalar_t__ cg_read (char const*,char const*,char*,int) ;
 scalar_t__ strstr (char*,char const*) ;

int cg_read_strstr(const char *cgroup, const char *control, const char *needle)
{
 char buf[PAGE_SIZE];

 if (cg_read(cgroup, control, buf, sizeof(buf)))
  return -1;

 return strstr(buf, needle) ? 0 : -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 long atol (char*) ;
 scalar_t__ cg_read (char const*,char const*,char*,int) ;

long cg_read_long(const char *cgroup, const char *control)
{
 char buf[128];

 if (cg_read(cgroup, control, buf, sizeof(buf)))
  return -1;

 return atol(buf);
}

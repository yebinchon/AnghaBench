
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char const*,char const*) ;
 int strlen (char const*) ;

char *cg_control(const char *cgroup, const char *control)
{
 size_t len = strlen(cgroup) + strlen(control) + 2;
 char *ret = malloc(len);

 snprintf(ret, len, "%s/%s", cgroup, control);

 return ret;
}

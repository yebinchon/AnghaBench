
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mkdir (char const*,int) ;

int cg_create(const char *cgroup)
{
 return mkdir(cgroup, 0644);
}

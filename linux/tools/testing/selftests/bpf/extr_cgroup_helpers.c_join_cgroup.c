
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int format_cgroup_path (char*,char const*) ;
 int join_cgroup_from_top (char*) ;

int join_cgroup(const char *path)
{
 char cgroup_path[PATH_MAX + 1];

 format_cgroup_path(cgroup_path, path);
 return join_cgroup_from_top(cgroup_path);
}

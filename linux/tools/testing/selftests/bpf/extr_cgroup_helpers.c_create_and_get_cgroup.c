
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EEXIST ;
 int O_RDONLY ;
 int PATH_MAX ;
 scalar_t__ errno ;
 int format_cgroup_path (char*,char const*) ;
 int log_err (char*,...) ;
 scalar_t__ mkdir (char*,int) ;
 int open (char*,int ) ;

int create_and_get_cgroup(const char *path)
{
 char cgroup_path[PATH_MAX + 1];
 int fd;

 format_cgroup_path(cgroup_path, path);
 if (mkdir(cgroup_path, 0777) && errno != EEXIST) {
  log_err("mkdiring cgroup %s .. %s", path, cgroup_path);
  return -1;
 }

 fd = open(cgroup_path, O_RDONLY);
 if (fd < 0) {
  log_err("Opening Cgroup");
  return -1;
 }

 return fd;
}

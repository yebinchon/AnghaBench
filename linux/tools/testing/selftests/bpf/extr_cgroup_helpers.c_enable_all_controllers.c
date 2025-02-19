
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int path ;
typedef int buf ;


 int O_RDONLY ;
 int O_RDWR ;
 int PATH_MAX ;
 int close (int) ;
 scalar_t__ dprintf (int,char*,char*) ;
 int log_err (char*,char*,...) ;
 int open (char*,int ) ;
 size_t read (int,char*,int) ;
 int snprintf (char*,int,char*,char*) ;
 char* strtok_r (char*,char*,char**) ;

int enable_all_controllers(char *cgroup_path)
{
 char path[PATH_MAX + 1];
 char buf[PATH_MAX];
 char *c, *c2;
 int fd, cfd;
 ssize_t len;

 snprintf(path, sizeof(path), "%s/cgroup.controllers", cgroup_path);
 fd = open(path, O_RDONLY);
 if (fd < 0) {
  log_err("Opening cgroup.controllers: %s", path);
  return 1;
 }

 len = read(fd, buf, sizeof(buf) - 1);
 if (len < 0) {
  close(fd);
  log_err("Reading cgroup.controllers: %s", path);
  return 1;
 }
 buf[len] = 0;
 close(fd);


 if (len == 0)
  return 0;

 snprintf(path, sizeof(path), "%s/cgroup.subtree_control", cgroup_path);
 cfd = open(path, O_RDWR);
 if (cfd < 0) {
  log_err("Opening cgroup.subtree_control: %s", path);
  return 1;
 }

 for (c = strtok_r(buf, " ", &c2); c; c = strtok_r(((void*)0), " ", &c2)) {
  if (dprintf(cfd, "+%s\n", c) <= 0) {
   log_err("Enabling controller %s: %s", c, path);
   close(cfd);
   return 1;
  }
 }
 close(cfd);
 return 0;
}

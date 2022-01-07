
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int cgroup_procs_path ;


 int O_WRONLY ;
 int PATH_MAX ;
 int close (int) ;
 scalar_t__ dprintf (int,char*,int ) ;
 int getpid () ;
 int log_err (char*,...) ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int join_cgroup_from_top(char *cgroup_path)
{
 char cgroup_procs_path[PATH_MAX + 1];
 pid_t pid = getpid();
 int fd, rc = 0;

 snprintf(cgroup_procs_path, sizeof(cgroup_procs_path),
   "%s/cgroup.procs", cgroup_path);

 fd = open(cgroup_procs_path, O_WRONLY);
 if (fd < 0) {
  log_err("Opening Cgroup Procs: %s", cgroup_procs_path);
  return 1;
 }

 if (dprintf(fd, "%d\n", pid) < 0) {
  log_err("Joining Cgroup");
  rc = 1;
 }

 close(fd);
 return rc;
}

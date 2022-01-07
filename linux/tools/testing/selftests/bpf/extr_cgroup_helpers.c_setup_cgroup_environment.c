
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CGROUP_MOUNT_PATH ;
 int CLONE_NEWNS ;
 scalar_t__ EBUSY ;
 scalar_t__ EEXIST ;
 int MS_PRIVATE ;
 int MS_REC ;
 int PATH_MAX ;
 int cleanup_cgroup_environment () ;
 scalar_t__ enable_all_controllers (char*) ;
 scalar_t__ errno ;
 int format_cgroup_path (char*,char*) ;
 int log_err (char*) ;
 scalar_t__ mkdir (char*,int) ;
 scalar_t__ mount (char*,char*,char*,int,int *) ;
 scalar_t__ unshare (int ) ;

int setup_cgroup_environment(void)
{
 char cgroup_workdir[PATH_MAX + 1];

 format_cgroup_path(cgroup_workdir, "");

 if (unshare(CLONE_NEWNS)) {
  log_err("unshare");
  return 1;
 }

 if (mount("none", "/", ((void*)0), MS_REC | MS_PRIVATE, ((void*)0))) {
  log_err("mount fakeroot");
  return 1;
 }

 if (mount("none", CGROUP_MOUNT_PATH, "cgroup2", 0, ((void*)0)) && errno != EBUSY) {
  log_err("mount cgroup2");
  return 1;
 }


 cleanup_cgroup_environment();

 if (mkdir(cgroup_workdir, 0777) && errno != EEXIST) {
  log_err("mkdir cgroup work dir");
  return 1;
 }

 if (enable_all_controllers(cgroup_workdir))
  return 1;

 return 0;
}

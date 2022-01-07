
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_MODIFY ;
 int cg_control (char const*,char*) ;
 int close (int) ;
 int debug (char*) ;
 int inotify_add_watch (int,int ,int ) ;
 int inotify_init1 (int ) ;

__attribute__((used)) static int cg_prepare_for_wait(const char *cgroup)
{
 int fd, ret = -1;

 fd = inotify_init1(0);
 if (fd == -1) {
  debug("Error: inotify_init1() failed\n");
  return fd;
 }

 ret = inotify_add_watch(fd, cg_control(cgroup, "cgroup.events"),
    IN_MODIFY);
 if (ret == -1) {
  debug("Error: inotify_add_watch() failed\n");
  close(fd);
 }

 return fd;
}

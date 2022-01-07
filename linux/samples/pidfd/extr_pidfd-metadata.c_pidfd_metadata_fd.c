
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int path ;



 int O_CLOEXEC ;
 int O_DIRECTORY ;
 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int open (char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int sys_pidfd_send_signal (int,int ,int *,int ) ;
 int warn (char*,...) ;

__attribute__((used)) static int pidfd_metadata_fd(pid_t pid, int pidfd)
{
 int procfd, ret;
 char path[100];

 snprintf(path, sizeof(path), "/proc/%d", pid);
 procfd = open(path, O_DIRECTORY | O_RDONLY | O_CLOEXEC);
 if (procfd < 0) {
  warn("Failed to open %s\n", path);
  return -1;
 }





 ret = sys_pidfd_send_signal(pidfd, 0, ((void*)0), 0);
 if (ret < 0) {
  switch (errno) {
  case 128:

   break;
  default:
   warn("Failed to signal process\n");
   close(procfd);
   procfd = -1;
  }
 }

 return procfd;
}

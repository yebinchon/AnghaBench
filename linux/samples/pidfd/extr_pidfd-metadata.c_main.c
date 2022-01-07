
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef scalar_t__ pid_t ;
typedef int buf ;


 int CLONE_PIDFD ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int STDOUT_FILENO ;
 int close (int) ;
 int err (int,char*) ;
 int exit (int) ;
 int openat (int,char*,int) ;
 scalar_t__ pidfd_clone (int ,int*) ;
 int pidfd_metadata_fd (scalar_t__,int) ;
 scalar_t__ read (int,char*,int) ;
 int wait (int *) ;
 int warnx (char*) ;
 scalar_t__ write (int ,char*,scalar_t__) ;

int main(int argc, char *argv[])
{
 int pidfd = -1, ret = EXIT_FAILURE;
 char buf[4096] = { 0 };
 pid_t pid;
 int procfd, statusfd;
 ssize_t bytes;

 pid = pidfd_clone(CLONE_PIDFD, &pidfd);
 if (pid < 0)
  err(ret, "CLONE_PIDFD");
 if (pidfd == -1) {
  warnx("CLONE_PIDFD is not supported by the kernel");
  goto out;
 }

 procfd = pidfd_metadata_fd(pid, pidfd);
 close(pidfd);
 if (procfd < 0)
  goto out;

 statusfd = openat(procfd, "status", O_RDONLY | O_CLOEXEC);
 close(procfd);
 if (statusfd < 0)
  goto out;

 bytes = read(statusfd, buf, sizeof(buf));
 if (bytes > 0)
  bytes = write(STDOUT_FILENO, buf, bytes);
 close(statusfd);
 ret = EXIT_SUCCESS;

out:
 (void)wait(((void*)0));

 exit(ret);
}

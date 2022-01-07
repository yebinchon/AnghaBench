
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int __do_pipe_flags (int*,struct file**,int) ;
 int fd_install (int,struct file*) ;

int do_pipe_flags(int *fd, int flags)
{
 struct file *files[2];
 int error = __do_pipe_flags(fd, files, flags);
 if (!error) {
  fd_install(fd[0], files[0]);
  fd_install(fd[1], files[1]);
 }
 return error;
}

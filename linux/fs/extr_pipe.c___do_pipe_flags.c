
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int EINVAL ;
 int O_CLOEXEC ;
 int O_DIRECT ;
 int O_NONBLOCK ;
 int audit_fd_pair (int,int) ;
 int create_pipe_files (struct file**,int) ;
 int fput (struct file*) ;
 int get_unused_fd_flags (int) ;
 int put_unused_fd (int) ;

__attribute__((used)) static int __do_pipe_flags(int *fd, struct file **files, int flags)
{
 int error;
 int fdw, fdr;

 if (flags & ~(O_CLOEXEC | O_NONBLOCK | O_DIRECT))
  return -EINVAL;

 error = create_pipe_files(files, flags);
 if (error)
  return error;

 error = get_unused_fd_flags(flags);
 if (error < 0)
  goto err_read_pipe;
 fdr = error;

 error = get_unused_fd_flags(flags);
 if (error < 0)
  goto err_fdr;
 fdw = error;

 audit_fd_pair(fdr, fdw);
 fd[0] = fdr;
 fd[1] = fdw;
 return 0;

 err_fdr:
 put_unused_fd(fdr);
 err_read_pipe:
 fput(files[0]);
 fput(files[1]);
 return error;
}

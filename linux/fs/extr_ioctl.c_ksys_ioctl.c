
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int file; } ;


 int EBADF ;
 int do_vfs_ioctl (int ,unsigned int,unsigned int,unsigned long) ;
 struct fd fdget (unsigned int) ;
 int fdput (struct fd) ;
 int security_file_ioctl (int ,unsigned int,unsigned long) ;

int ksys_ioctl(unsigned int fd, unsigned int cmd, unsigned long arg)
{
 int error;
 struct fd f = fdget(fd);

 if (!f.file)
  return -EBADF;
 error = security_file_ioctl(f.file, cmd, arg);
 if (!error)
  error = do_vfs_ioctl(f.file, fd, cmd, arg);
 fdput(f);
 return error;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {scalar_t__ file; } ;
typedef int loff_t ;


 int EBADF ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;
 int vfs_fallocate (scalar_t__,int,int ,int ) ;

int ksys_fallocate(int fd, int mode, loff_t offset, loff_t len)
{
 struct fd f = fdget(fd);
 int error = -EBADF;

 if (f.file) {
  error = vfs_fallocate(f.file, mode, offset, len);
  fdput(f);
 }
 return error;
}

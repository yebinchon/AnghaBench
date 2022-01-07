
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int file; } ;
typedef scalar_t__ off_t ;
typedef scalar_t__ loff_t ;


 scalar_t__ EBADF ;
 scalar_t__ EINVAL ;
 scalar_t__ EOVERFLOW ;
 unsigned int SEEK_MAX ;
 struct fd fdget_pos (unsigned int) ;
 int fdput_pos (struct fd) ;
 scalar_t__ vfs_llseek (int ,scalar_t__,unsigned int) ;

off_t ksys_lseek(unsigned int fd, off_t offset, unsigned int whence)
{
 off_t retval;
 struct fd f = fdget_pos(fd);
 if (!f.file)
  return -EBADF;

 retval = -EINVAL;
 if (whence <= SEEK_MAX) {
  loff_t res = vfs_llseek(f.file, offset, whence);
  retval = res;
  if (res != (loff_t)retval)
   retval = -EOVERFLOW;
 }
 fdput_pos(f);
 return retval;
}

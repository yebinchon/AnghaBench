
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int security_file_ioctl (struct file*,unsigned int,unsigned long) ;
 int vfs_ioctl (struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static int do_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 int err;

 err = security_file_ioctl(file, cmd, arg);
 if (err)
  return err;

 return vfs_ioctl(file, cmd, arg);
}

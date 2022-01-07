
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long ENOIOCTLCMD ;


 unsigned int FS_IOC_GETFLAGS ;
 unsigned int FS_IOC_SETFLAGS ;
 long ovl_ioctl (struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static long ovl_compat_ioctl(struct file *file, unsigned int cmd,
        unsigned long arg)
{
 switch (cmd) {
 case 129:
  cmd = FS_IOC_GETFLAGS;
  break;

 case 128:
  cmd = FS_IOC_SETFLAGS;
  break;

 default:
  return -ENOIOCTLCMD;
 }

 return ovl_ioctl(file, cmd, arg);
}

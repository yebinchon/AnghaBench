
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long ENOTTY ;




 long ovl_ioctl_set_fsflags (struct file*,unsigned int,unsigned long) ;
 long ovl_ioctl_set_fsxflags (struct file*,unsigned int,unsigned long) ;
 long ovl_real_ioctl (struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static long ovl_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 long ret;

 switch (cmd) {
 case 129:
 case 131:
  ret = ovl_real_ioctl(file, cmd, arg);
  break;

 case 128:
  ret = ovl_ioctl_set_fsflags(file, cmd, arg);
  break;

 case 130:
  ret = ovl_ioctl_set_fsxflags(file, cmd, arg);
  break;

 default:
  ret = -ENOTTY;
 }

 return ret;
}

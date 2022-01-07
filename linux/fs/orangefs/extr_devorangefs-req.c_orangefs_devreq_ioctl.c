
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long check_ioctl_command (unsigned int) ;
 scalar_t__ dispatch_ioctl_command (unsigned int,unsigned long) ;

__attribute__((used)) static long orangefs_devreq_ioctl(struct file *file,
          unsigned int command, unsigned long arg)
{
 long ret;


 ret = check_ioctl_command(command);
 if (ret < 0)
  return (int)ret;

 return (int)dispatch_ioctl_command(command, arg);
}

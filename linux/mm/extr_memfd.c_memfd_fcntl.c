
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long EINVAL ;


 unsigned long UINT_MAX ;
 long memfd_add_seals (struct file*,unsigned long) ;
 long memfd_get_seals (struct file*) ;

long memfd_fcntl(struct file *file, unsigned int cmd, unsigned long arg)
{
 long error;

 switch (cmd) {
 case 129:

  if (arg > UINT_MAX)
   return -EINVAL;

  error = memfd_add_seals(file, arg);
  break;
 case 128:
  error = memfd_get_seals(file);
  break;
 default:
  error = -EINVAL;
  break;
 }

 return error;
}

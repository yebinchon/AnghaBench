
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;
struct file {struct pid* private_data; int * f_op; } ;


 int EBADF ;
 struct pid* ERR_PTR (int ) ;
 int pidfd_fops ;

struct pid *pidfd_pid(const struct file *file)
{
 if (file->f_op == &pidfd_fops)
  return file->private_data;

 return ERR_PTR(-EBADF);
}

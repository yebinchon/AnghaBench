
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int * f_op; } ;


 int EBADF ;
 int EINVAL ;
 struct file* ERR_PTR (int ) ;
 int eventfd_fops ;
 struct file* fget (int) ;
 int fput (struct file*) ;

struct file *eventfd_fget(int fd)
{
 struct file *file;

 file = fget(fd);
 if (!file)
  return ERR_PTR(-EBADF);
 if (file->f_op != &eventfd_fops) {
  fput(file);
  return ERR_PTR(-EINVAL);
 }

 return file;
}

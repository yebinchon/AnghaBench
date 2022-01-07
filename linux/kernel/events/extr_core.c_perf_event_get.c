
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int * f_op; } ;


 int EBADF ;
 struct file* ERR_PTR (int ) ;
 struct file* fget (unsigned int) ;
 int fput (struct file*) ;
 int perf_fops ;

struct file *perf_event_get(unsigned int fd)
{
 struct file *file = fget(fd);
 if (!file)
  return ERR_PTR(-EBADF);

 if (file->f_op != &perf_fops) {
  fput(file);
  return ERR_PTR(-EBADF);
 }

 return file;
}

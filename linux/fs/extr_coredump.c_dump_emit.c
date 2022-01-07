
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_pos; } ;
struct coredump_params {scalar_t__ written; scalar_t__ limit; int pos; struct file* file; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;


 scalar_t__ __kernel_write (struct file*,void const*,int,int *) ;
 scalar_t__ dump_interrupted () ;

int dump_emit(struct coredump_params *cprm, const void *addr, int nr)
{
 struct file *file = cprm->file;
 loff_t pos = file->f_pos;
 ssize_t n;
 if (cprm->written + nr > cprm->limit)
  return 0;
 while (nr) {
  if (dump_interrupted())
   return 0;
  n = __kernel_write(file, addr, nr, &pos);
  if (n <= 0)
   return 0;
  file->f_pos = pos;
  cprm->written += n;
  cprm->pos += n;
  nr -= n;
 }
 return 1;
}

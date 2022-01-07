
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int f_mode; TYPE_1__* f_op; } ;
typedef int loff_t ;
struct TYPE_2__ {int (* llseek ) (struct file*,int ,int) ;} ;


 int FMODE_LSEEK ;
 int no_llseek (struct file*,int ,int) ;

loff_t vfs_llseek(struct file *file, loff_t offset, int whence)
{
 loff_t (*fn)(struct file *, loff_t, int);

 fn = no_llseek;
 if (file->f_mode & FMODE_LSEEK) {
  if (file->f_op->llseek)
   fn = file->f_op->llseek;
 }
 return fn(file, offset, whence);
}

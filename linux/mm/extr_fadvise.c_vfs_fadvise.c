
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {TYPE_1__* f_op; } ;
typedef int loff_t ;
struct TYPE_2__ {int (* fadvise ) (struct file*,int ,int ,int) ;} ;


 int generic_fadvise (struct file*,int ,int ,int) ;
 int stub1 (struct file*,int ,int ,int) ;

int vfs_fadvise(struct file *file, loff_t offset, loff_t len, int advice)
{
 if (file->f_op->fadvise)
  return file->f_op->fadvise(file, offset, len, advice);

 return generic_fadvise(file, offset, len, advice);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iov_iter {int dummy; } ;
struct file {TYPE_1__* f_op; } ;
typedef int ssize_t ;
typedef int rwf_t ;
typedef int loff_t ;
struct TYPE_2__ {int write_iter; } ;


 int EINVAL ;
 int do_iter_write (struct file*,struct iov_iter*,int *,int ) ;

ssize_t vfs_iter_write(struct file *file, struct iov_iter *iter, loff_t *ppos,
  rwf_t flags)
{
 if (!file->f_op->write_iter)
  return -EINVAL;
 return do_iter_write(file, iter, ppos, flags);
}

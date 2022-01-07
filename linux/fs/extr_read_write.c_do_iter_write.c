
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iov_iter {int dummy; } ;
struct file {int f_mode; TYPE_1__* f_op; } ;
typedef scalar_t__ ssize_t ;
typedef int rwf_t ;
typedef int loff_t ;
struct TYPE_2__ {scalar_t__ write_iter; } ;


 scalar_t__ EBADF ;
 scalar_t__ EINVAL ;
 int FMODE_CAN_WRITE ;
 int FMODE_WRITE ;
 int WRITE ;
 scalar_t__ do_iter_readv_writev (struct file*,struct iov_iter*,int *,int ,int ) ;
 scalar_t__ do_loop_readv_writev (struct file*,struct iov_iter*,int *,int ,int ) ;
 int fsnotify_modify (struct file*) ;
 size_t iov_iter_count (struct iov_iter*) ;
 scalar_t__ rw_verify_area (int ,struct file*,int *,size_t) ;

__attribute__((used)) static ssize_t do_iter_write(struct file *file, struct iov_iter *iter,
  loff_t *pos, rwf_t flags)
{
 size_t tot_len;
 ssize_t ret = 0;

 if (!(file->f_mode & FMODE_WRITE))
  return -EBADF;
 if (!(file->f_mode & FMODE_CAN_WRITE))
  return -EINVAL;

 tot_len = iov_iter_count(iter);
 if (!tot_len)
  return 0;
 ret = rw_verify_area(WRITE, file, pos, tot_len);
 if (ret < 0)
  return ret;

 if (file->f_op->write_iter)
  ret = do_iter_readv_writev(file, iter, pos, WRITE, flags);
 else
  ret = do_loop_readv_writev(file, iter, pos, WRITE, flags);
 if (ret > 0)
  fsnotify_modify(file);
 return ret;
}

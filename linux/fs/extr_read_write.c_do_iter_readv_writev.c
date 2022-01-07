
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_pos; } ;
struct iov_iter {int dummy; } ;
struct file {int dummy; } ;
typedef int ssize_t ;
typedef int rwf_t ;
typedef int loff_t ;


 int BUG_ON (int) ;
 int EIOCBQUEUED ;
 int READ ;
 int call_read_iter (struct file*,struct kiocb*,struct iov_iter*) ;
 int call_write_iter (struct file*,struct kiocb*,struct iov_iter*) ;
 int init_sync_kiocb (struct kiocb*,struct file*) ;
 int kiocb_set_rw_flags (struct kiocb*,int ) ;

__attribute__((used)) static ssize_t do_iter_readv_writev(struct file *filp, struct iov_iter *iter,
  loff_t *ppos, int type, rwf_t flags)
{
 struct kiocb kiocb;
 ssize_t ret;

 init_sync_kiocb(&kiocb, filp);
 ret = kiocb_set_rw_flags(&kiocb, flags);
 if (ret)
  return ret;
 kiocb.ki_pos = (ppos ? *ppos : 0);

 if (type == READ)
  ret = call_read_iter(filp, &kiocb, iter);
 else
  ret = call_write_iter(filp, &kiocb, iter);
 BUG_ON(ret == -EIOCBQUEUED);
 if (ppos)
  *ppos = kiocb.ki_pos;
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct kiocb {int ki_pos; } ;
struct iov_iter {int idx; scalar_t__ iov_offset; } ;
struct file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EAGAIN ;
 int EFAULT ;
 int READ ;
 int call_read_iter (struct file*,struct kiocb*,struct iov_iter*) ;
 int file_accessed (struct file*) ;
 int init_sync_kiocb (struct kiocb*,struct file*) ;
 int iov_iter_advance (struct iov_iter*,int ) ;
 int iov_iter_pipe (struct iov_iter*,int ,struct pipe_inode_info*,size_t) ;

ssize_t generic_file_splice_read(struct file *in, loff_t *ppos,
     struct pipe_inode_info *pipe, size_t len,
     unsigned int flags)
{
 struct iov_iter to;
 struct kiocb kiocb;
 int idx, ret;

 iov_iter_pipe(&to, READ, pipe, len);
 idx = to.idx;
 init_sync_kiocb(&kiocb, in);
 kiocb.ki_pos = *ppos;
 ret = call_read_iter(in, &kiocb, &to);
 if (ret > 0) {
  *ppos = kiocb.ki_pos;
  file_accessed(in);
 } else if (ret < 0) {
  to.idx = idx;
  to.iov_offset = 0;
  iov_iter_advance(&to, 0);




  if (ret == -EFAULT)
   ret = -EAGAIN;
 }

 return ret;
}

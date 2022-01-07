
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EAGAIN ;
 unsigned int SPLICE_F_NONBLOCK ;
 int subbuf_splice_actor (struct file*,int*,struct pipe_inode_info*,size_t,unsigned int,int*) ;

__attribute__((used)) static ssize_t relay_file_splice_read(struct file *in,
          loff_t *ppos,
          struct pipe_inode_info *pipe,
          size_t len,
          unsigned int flags)
{
 ssize_t spliced;
 int ret;
 int nonpad_ret = 0;

 ret = 0;
 spliced = 0;

 while (len && !spliced) {
  ret = subbuf_splice_actor(in, ppos, pipe, len, flags, &nonpad_ret);
  if (ret < 0)
   break;
  else if (!ret) {
   if (flags & SPLICE_F_NONBLOCK)
    ret = -EAGAIN;
   break;
  }

  *ppos += ret;
  if (ret > len)
   len = 0;
  else
   len -= ret;
  spliced += nonpad_ret;
  nonpad_ret = 0;
 }

 if (spliced)
  return spliced;

 return ret;
}

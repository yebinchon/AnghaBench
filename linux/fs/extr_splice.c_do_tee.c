
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct file {int f_flags; } ;


 int EINVAL ;
 int O_NONBLOCK ;
 unsigned int SPLICE_F_NONBLOCK ;
 struct pipe_inode_info* get_pipe_info (struct file*) ;
 int ipipe_prep (struct pipe_inode_info*,unsigned int) ;
 int link_pipe (struct pipe_inode_info*,struct pipe_inode_info*,size_t,unsigned int) ;
 int opipe_prep (struct pipe_inode_info*,unsigned int) ;

__attribute__((used)) static long do_tee(struct file *in, struct file *out, size_t len,
     unsigned int flags)
{
 struct pipe_inode_info *ipipe = get_pipe_info(in);
 struct pipe_inode_info *opipe = get_pipe_info(out);
 int ret = -EINVAL;





 if (ipipe && opipe && ipipe != opipe) {
  if ((in->f_flags | out->f_flags) & O_NONBLOCK)
   flags |= SPLICE_F_NONBLOCK;





  ret = ipipe_prep(ipipe, flags);
  if (!ret) {
   ret = opipe_prep(opipe, flags);
   if (!ret)
    ret = link_pipe(ipipe, opipe, len, flags);
  }
 }

 return ret;
}

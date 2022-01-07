
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; } ;
struct pipe_inode_info {int dummy; } ;
struct file {struct socket* private_data; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int (* splice_read ) (struct socket*,int *,struct pipe_inode_info*,size_t,unsigned int) ;} ;


 int generic_file_splice_read (struct file*,int *,struct pipe_inode_info*,size_t,unsigned int) ;
 int stub1 (struct socket*,int *,struct pipe_inode_info*,size_t,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t sock_splice_read(struct file *file, loff_t *ppos,
    struct pipe_inode_info *pipe, size_t len,
    unsigned int flags)
{
 struct socket *sock = file->private_data;

 if (unlikely(!sock->ops->splice_read))
  return generic_file_splice_read(file, ppos, pipe, len, flags);

 return sock->ops->splice_read(sock, ppos, pipe, len, flags);
}
